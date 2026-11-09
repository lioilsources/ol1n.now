---
tagline: Job time tracking that verifies the location — and doesn't store it
---
Construction companies and service teams still report their hours on paper, over WhatsApp and in Excel. The supervisor has no way to check who was where, and the worker has no way to prove overtime. PMTracker measures time on a specific job and knows, for every entry, whether the person was really on site.

### Location only twice, then it's thrown away

Coordinates are sent **only when you start and stop** tracking. The server checks that the point lies inside the job's geofence, stores a single fact — "on site / not on site" — and discards the coordinates. No movement map, no background tracking. Work outside the geofence can be allowed by an exception that is written to the audit log.

### The database enforces roles, not the app

A team member tracks time on the jobs they're assigned to. A manager also manages jobs and the team roster and sees reports. An administrator manages users. Permissions are enforced by rules right in the database, so not even a modified client can get around them.

### Status

It's an MVP: the data model, roles, geofence verification and the screens for sign-in, tracking, jobs, roster, reports and administration are in place. Offline mode for construction sites without signal is ready but not switched on yet, and the app isn't running at any company yet. To sign in, you need an account from your employer.

### For beta testers

The test version is only for **Android** for now. It runs against a demo company, "Stavby s.r.o.", with made-up people and two jobs: an office renovation on Wenceslas Square in Prague and air conditioning on Freedom Square in Brno. The data can be wiped at any time. There's no sign-up in the app; the person who invited you to test will send you an account.

**Installation**

1. On your phone, download the APK with the button in the **Downloads** section above (or from [GitHub Releases](https://github.com/lioilsources/PMTracker/releases)).
2. Open the downloaded file and allow installing from unknown sources when Android asks.
3. Google Play Protect may warn that it doesn't know the app. That's because it isn't from Google Play; choose to install anyway.
4. Launch **PMTracker** and sign in with the account you got in the message.

**What to try as a team member**

- On the **Výkaz** (Timesheet) tab, tap **Zahájit výkaz** (Start timesheet), pick a job and allow location access. At the job site, a green "Na místě" (On site) appears under the time.
- When you're not on site, the app asks for a reason. That's fine: type "test", for example, and the entry is saved with a note that it was made off site.
- After a while, stop tracking with the **Ukončit výkaz** (End timesheet) button. "Dnes celkem" (Today's total) goes up.
- On the **Zakázky** (Jobs) tab, open a job's details: address, geofence size, who's assigned and the task checklist.

**What to try as a manager**

- You also see **Roster** (your team) and **Reporty** (Reports) with people's hours by job. Only stopped sessions count in the report; change the period in the top right.
- Switch accounts by signing out (the icon in the top right of the **Výkaz** tab).

**What not to expect yet**

- The app doesn't work without internet; offline mode will come later.
- A forgotten session doesn't stop on its own; stop it manually.
- There's no iPhone version for testers yet.

Send bugs or ideas to the person who invited you: what you were doing, what happened and which account you used. A screenshot helps a lot.
