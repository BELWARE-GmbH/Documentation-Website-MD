---
title: "New and planned"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---

### New and planned

#### Version 2.29.0.0 24.06.2025
New features:
 - Blanket orders are now supported.
 - The "Connector 365" info box has been added to the blanket orders overview and the blanket order card. 

#### Version 2.26.0.0 16.04.2025
New Features:
 - The field "XRechnung Syntax" has been added to the base parameters, which allows you to specify the syntax of the XRechnung as UBL or CII.

#### Version 2.23.0.0 10.10.2024
new features:
 - Changed license check to only apply to SaaS production environments. 

#### Version 2.22.0.1 09.10.2024
Error corrections:
 - Fixed error when adding new attachments for versions < BC22. 

#### Version 2.22.0.0 25.07.2024
New features:
 - Added new internal event for Report Layout Plus and Addressee Control integration. 

#### Version 2.21.0.0 05.07.2024
New features:
 - Added new event for integration of new Easy Batch version. 

#### Version 2.20.0.7 10.06.2024
Error corrections:
 - All license related calls are repeated up to three times.

#### Version 2.20.0.6 19.04.2024
Error corrections:
 - License check is repeated up to three times in the event of an error.

#### Version 2.20.0.5 11.04.2024
Error corrections:
 - Moved Comminication Matrix for vendors to a separate page, to allow setting up vendor reports.

#### Version 2.20.0.4 03.04.2024
Error corrections:
 - Compatibility for versions < BC23 established.

#### Version 2.20.0.3 02.04.2024
Error corrections:
 - Added permissions for standard tables.

#### Version 2.20.0.2 02.04.2024
Error corrections:
 - Removed *Document Statistics* subpage from the *Sent emails* page 

#### Version 2.20.0.1 21.03.2024
Error corrections:
 - Fixes errors when retrieving body texts

#### Version 2.20.0.0 15.03.2024
New features:
 - Integrates internal functions for compatibility with the upcoming Connector 365 PDF app

#### Version 2.19.0.0 1.03.2024
New features:
 - Use of the new layout code fields from report selection / document layouts
 - Compatibility with the latest functions of the Connector 365 Easy Batch App

#### Version 2.18.0.0 7.2.2024
New features:
  - Adds bodytext field to the Connector 365 activities

#### Version 2.17.0.0 12/15/2023
New features:
 - Implements changes to ensure compatibility with priority control of "Connector 365 Addressee Control"

#### Version 2.16.06 21.11.2023
Improvements:
 - Fixes errors when obtaining body texts

#### Version 2.16.0.5 09.11.2023
Improvements:
 - Fixing errors in saving and displaying various document types in the activity list.

#### Version 2.13.0.2
Improvements:
- Performance improvements for the Connector 365 Statistics

#### Version 2.13.0.0
New features:
- Showing [Communication Matrix](/en-us/apps/base/first-steps/setup/communication-matrix/) (document layouts) in pages:
  * Vendors
  * Customers
  (List and Part in each case)

- Showing [Activity entries and statistics](/en-us/apps/base/first-steps/setup/infobox-extensions/) in the following pages
  * Vendors
  * Customers
  * Contacts
  (List and Part in each case)

Corrections:
- Correction of the function to [Delete activity entries](/en-us/apps/base/first-steps/setup/delete-activity-files/).
- fix potential error when updating from Connector 365 version < 2.0 to a version >= 2.0


#### Version 2.11.0.0 - 22.08.2023
Improvements:
* Synchronization of activity and feedback entries on upgrade to Connector 365 2.0

#### Version 2.5.0.1 - 26.04.2023
Correction:
- Automatically activate the HTTP request for license verification.
#### Version 2.5.0.0 - 14.04.2023
- Implementation of additional table for saving additional files for each process.
- Implementation of API pages for the use of Power Automate.
- Support for the app Mail Scenarios Plus.
- Adjustment of permission sets:
  - CON365, Edit now includes the permission set CON365, View