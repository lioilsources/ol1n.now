---
tagline: Renting a flat from the map search to the paid rent — for landlords, tenants and the operator
---
TerraReality is a platform for long-term rentals of flats and rooms. It starts
in Prague and its surroundings, but its data model is ready for other Central
European countries from day one (jurisdiction of the lease, currency, language).
Unlike a listings portal it does not stop at the contact: it takes the landlord
and the tenant through the whole tenancy — search, messages, application,
viewing, lease and signature, all the way to the payments and keeping an eye
on them.

The platform has four faces. **Seekers** search on a map or simply write what
they want. **Landlords and property managers** get an admin in the style of an
online shop: listings, applicants, leases, bank, portfolio and invoicing.
**Tenants** get a tenant portal with the lease, payments and QR codes. **The
operator** gets a backoffice for approvals, moderation and settings. Plus a
mobile app for iOS and Android.

The screenshots come from the development environment with test data: the
names are made up, the flat photos are illustrative and the AI suggestions were
produced in offline mode without a language model. The application itself is in
Czech, with English available.

### Map and chat search

The map goes from the region through the municipality and the city district down
to the street and shows how many offers there are at every zoom level. Next to
it are filters (type, price, area, layout, furnishing, pets, transport) with a
count for every option. Anyone who does not want to click can type something
like “2+kk up to 25,000 in Prague 6 with a dog and a balcony” — the platform
sets the filters and the map area from the sentence and shows how it understood
it. Searches can be saved, and new matching offers trigger a notification.

### Listings with AI help — always approved by a person

The landlord enters the address from the official address register (RÚIAN), the
parameters, photos and text. AI can suggest parameters from the description and
the photos (lift, balcony, building type…) and write the listing text in Czech
and English. A suggestion is never saved on its own: the landlord sees what the
AI proposes, ticks what is right, and only then is it applied. Before the
listing goes public a person in the backoffice approves it. Landlords can add
screening questions for applicants (e.g. “Do you have a pet?”).

### Messages

Seekers write to the landlord straight from the listing. Messages arrive in real
time, with read receipts and attachments. Phone numbers and e-mail addresses in
the text are hidden until the lease is signed, so that neither the arrangement
nor the money moves off the platform — and the seeker sees a warning not to pay
anything before the viewing. Whoever is offline gets a push or an e-mail. A
suspicious conversation can be reported with one click.

### Applications, flatmates and choosing a tenant

A seeker applies alone or for a group of flatmates: they create a group, invite
the others by e-mail, talk it over in the group chat, and the application only
reaches the landlord once everyone has agreed. The landlord sees the applicants
with their answers to the screening questions, their verification status and a
short AI summary (again, only a suggestion). Protected data such as age, gender
or nationality are never collected. When the landlord picks someone, the others
get a polite automatic reply.

### Viewings

The landlord offers viewing slots with a capacity and a note (“meet at the
entrance”); applicants book, move or cancel them right in the application and
get a reminder.

### Digital lease and signature

A lease is created from a template (fixed-term or open-ended flat, joint tenancy
of flatmates, room) and filled in from the offer. The form produces a PDF, both
sides sign online, and every event — draft, signature, payment, notice — is
written into an audit chain in which each record is linked to the previous one
by a hash. A later change to the history cannot be hidden; the lease page shows
that the chain is intact. Notice and the settlement of the deposit are covered
too.

Until a lawyer has reviewed them the templates carry a DRAFT watermark, and the
signature is for now a simple electronic signature with evidence (time, IP
address, document fingerprint). Signing with Bank iD is prepared as the next
step and waits for the contract with Bank iD.

### Payments — the money goes straight to the landlord

The lease produces a payment schedule: deposit, rent and service charges, split
by shares for flatmates. Tenants pay with a QR code in their banking app or by
card via a Revolut Business link that leads to the landlord's own merchant
account. The landlord can connect a bank account (read-only) and incoming
payments are matched automatically by variable symbol, specific symbol and
amount; whatever does not fit stays as a suggestion to match by hand. After the
due date reminders go out, and after seven days an escalation.

**TerraReality never holds or forwards tenants' money.** No escrow, no crypto —
payments go directly from the tenant's account to the landlord's.

### Portfolio across cities and lease risk

For landlords and managers with several flats: all tenancies by municipality,
the monthly roll and what actually came in, a twelve-month trend, a list of
what needs attention (debt, escalation, notice, vacant unit), income
concentration and a rent roll with CSV and Excel export. Every tenancy has a
risk score computed from rules (debt, old unpaid items, deposit cover, an
approaching end of the lease…). The score is information only and never decides
about anyone; tenants can see what it is made of. Rules (reminders,
escalation, deposit, notice period) can be set per municipality, and an
investor can get read-only access in which tenants appear as initials only.

### Promotion and invoicing

Landlords can bump or highlight a listing. They pay by card via Stripe, an
invoice with VAT is issued automatically, e-mailed and available in the admin.
Promoted listings are labelled in the results.

### Backoffice, moderation and the DSA

The operator gets a metrics overview, a queue of listings to approve,
moderation of reported conversations and listings, a queue of AI suggestions for
new parameters, the promotion price list, lease templates, feature switches and
an audit log. Anyone can report a listing, even without an account (as required
by the EU Digital Services Act); a person decides every case and the reasoning
is e-mailed to both the reporter and the advertiser. Signing in “as a user” for
support requires a stated reason and is written to the audit log.

### Mobile app

The Flutter app for iOS and Android covers what a tenant needs on the phone:
search with a list and a map, the listing detail with a message, an application
and booking a viewing, my viewings, the tenancy with QR payment and the Revolut
link, and deep links from push notifications. It is a first version; builds for
testers (TestFlight and Google Play internal track) are part of the testing
preparation.

### Operations

The production environment is prepared for Hetzner in the EU: separate
application and database servers in a private network, automatic HTTPS,
database backups with point-in-time recovery (at most an hour of data lost) and
a verified restore drill, monitoring with alerts (99.9 % availability, search
response under 300 ms, backup status) and error reporting. AI runs on our own
GPU server; when AI is unavailable, everything still works without it.

### Status and testing

**The MVP of the whole platform is done.** All modules above are implemented and
covered by automated tests — unit, integration and end-to-end tests that click
through complete scenarios in a browser (listing, messages, group application,
lease with signature and a matched payment, portfolio, promotion with invoice,
DSA report, backoffice). Restoring the database from a backup has been verified
as well.

**A hardening pass before the pilot is under way**: security and operational
improvements recommended by the code review, notifications for applications,
leases and payments, and the test environment. Nothing runs on a real server
yet — deployment waits for accounts and access (see below).

Testing with real people runs in five phases. Each ends with a gate where we
decide together whether to move on:

1. **T0 — preparation (2 weeks).** A test environment on Hetzner with a “Test
   environment” banner, partners in sandbox mode (Stripe, Revolut, Bank iD),
   product analytics without personal data, a “Report a problem / idea” button
   in the web and the app, invitation-only sign-up, test data and app builds for
   testers.
2. **T1 — internal testing (1 week).** 5–8 people from the team and around it
   go through every scenario as both landlord and seeker, on several devices,
   including an incident drill and a restore from backup.
3. **T2 — moderated usability tests (2 weeks).** 12 participants: private
   landlords, a manager with flats in several cities, Czech and foreign seekers
   and a pair of flatmates. Task success and satisfaction (SUS ≥ 70) are
   measured.
4. **T3 — closed pilot in Prague (6 weeks).** 20 pilot landlords with personal
   onboarding and 50–100 seekers, invitation only. We watch whether listings get
   applications, how fast landlords reply, how many leases are completed
   digitally and how reliably everything runs; one release a week.
5. **T4 — open beta in Prague (4 weeks).** Sign-up open to everyone with a beta
   label, no paid campaign — ending with the decision about the public launch.

All in all about 15 weeks from the start of the preparation.

**What we need from you:**

- accounts and access for operations: Hetzner, the domain and DNS, Apple and
  Google developer accounts, Stripe, Revolut Business, Bank iD and the bank data
  provider;
- recruiting testers, 20 pilot landlords and seekers, rewards for participants;
- a legal review of the terms, the privacy policy and the lease templates,
  consents of the testers, and the decision whether real leases are signed on
  the platform during the pilot;
- a penetration test before the pilot, leading the interviews in T2 and
  first-line support during the pilot;
- the decision at each gate between the phases.
