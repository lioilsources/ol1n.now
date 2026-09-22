#!/usr/bin/env python3
"""Check that a translated standalone page matches its base-language source.

    scripts/check-page-translation.py pages/business.html pages/business.en.html

A translation may change human-readable text and a few attributes (alt,
aria-label, title, the mailto subject). Everything else must be identical:
tags and their order, classes, ids, data-* attributes, link targets, image
sources, the build placeholders (__EMAIL__, __LANGS__, …), the header comments
that are not text, and the JSON-LD's structure and prices. Exit status 1 and a
list of differences when anything else changed.
"""
import json
import re
import sys
from html.parser import HTMLParser
from urllib.parse import urlsplit

TRANSLATABLE_ATTRS = {"alt", "aria-label", "title", "placeholder"}
PLACEHOLDERS = ("__EMAIL__", "__LANGS__", "__URL__", "__LANG__", "__OGIMAGE__")
FIXED_COMMENTS = ("email-user", "email-domain")


class Skeleton(HTMLParser):
    def __init__(self):
        super().__init__(convert_charrefs=True)
        self.items = []
        self.jsonld = []
        self._in_jsonld = False

    def handle_starttag(self, tag, attrs):
        kept = []
        for k, v in attrs:
            if k in TRANSLATABLE_ATTRS:
                continue
            if k == "href" and v and v.startswith("mailto:"):
                v = v.split("?", 1)[0]  # the subject line is translated
            kept.append((k, v))
        self.items.append(("<" + tag, tuple(sorted(kept))))
        self._in_jsonld = tag == "script" and ("type", "application/ld+json") in attrs

    def handle_endtag(self, tag):
        self.items.append(("</" + tag, ()))
        self._in_jsonld = False

    def handle_data(self, data):
        if self._in_jsonld and data.strip():
            self.jsonld.append(data)


def jsonld_shape(obj):
    """Keys, types and prices of the JSON-LD; free text is allowed to differ."""
    if isinstance(obj, dict):
        return {k: (v if k in ("@context", "@type", "@id", "price", "priceCurrency", "url",
                               "inLanguage", "image") else jsonld_shape(v))
                for k, v in obj.items()}
    if isinstance(obj, list):
        return [jsonld_shape(x) for x in obj]
    return type(obj).__name__


def load(path):
    text = open(path, encoding="utf-8").read()
    p = Skeleton()
    p.feed(text)
    comments = {k: v for k, v in re.findall(r"^<!-- ([a-z-]+): (.*) -->$", text, re.M)}
    return text, p, comments


def main(base_path, tr_path):
    base, bp, bc = load(base_path)
    tr, tp, tc = load(tr_path)
    problems = []

    for ph in PLACEHOLDERS:
        if base.count(ph) != tr.count(ph):
            problems.append(f"placeholder {ph}: {base.count(ph)} in source, {tr.count(ph)} in translation")
    for key in bc:
        if key not in tc:
            problems.append(f"header comment <!-- {key}: --> missing")
    for key in FIXED_COMMENTS:
        if bc.get(key) != tc.get(key):
            problems.append(f"header comment {key} must stay '{bc.get(key)}'")

    if len(bp.items) != len(tp.items):
        problems.append(f"element count differs: {len(bp.items)} vs {len(tp.items)}")
    for i, (a, b) in enumerate(zip(bp.items, tp.items)):
        if a != b:
            problems.append(f"element #{i}: source {a} vs translation {b}")
            if len(problems) > 12:
                break

    try:
        bj = [json.loads(x) for x in bp.jsonld]
        tj = [json.loads(x) for x in tp.jsonld]
        if [jsonld_shape(x) for x in bj] != [jsonld_shape(x) for x in tj]:
            problems.append("JSON-LD structure, prices or ids differ")
    except json.JSONDecodeError as e:
        problems.append(f"JSON-LD does not parse: {e}")

    # every link target and image source must survive, fragments included
    def targets(text):
        return sorted(u for u in re.findall(r'(?:href|src)="([^"]+)"', text)
                      if not u.startswith("mailto:"))
    if targets(base) != targets(tr):
        problems.append("a link target or image source changed")

    if problems:
        print(f"FAIL {tr_path}")
        for p in problems:
            print("  -", p)
        return 1
    print(f"OK   {tr_path}")
    return 0


if __name__ == "__main__":
    if len(sys.argv) != 3:
        sys.exit(__doc__)
    sys.exit(main(sys.argv[1], sys.argv[2]))
