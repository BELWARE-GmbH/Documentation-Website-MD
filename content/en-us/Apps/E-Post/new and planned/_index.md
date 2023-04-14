---
title: "New and Planned"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: true
weight: 1
---

### New and planned

### Planned functions for future versions
- Reactivation of negative jobs
- Contacts editable in dialog
- Other report types (service invoices/credit memos)
    - Pos. service invoices
    - Pos. service credit memos

### Version 2.4.0.3 - 13.04.2023
- Corrections:
  - Corrected the view of the status cue in the role center.
### Version 2.4.0.1 - 03.03.2023
- Correction for sending external documents:
 - The parameter DocName no longer needs to be filled for successfully sending external documents.
### Version 2.4.0.0 - 16.02.2023
- Added function for sending of external documents

### Version 2.3.1.0 - 15.02.2023
- Hotfix: Necessary adjustments to the data format transferred to E-Post-API due to changes in the E-Post-Api interface.
  -> Corrects message about incorrect conversion of data

### Version 2.3.0.0 - 19.01.2023
- Integration of Connector 365 permission sets View, Edit und Setup.

Corrections:
- Correction of the date filter of status cues in the role center.
- The sender address will be correctly taken from the company information from now on.

### Version 2.2.0.0 - 06.01.2023
- Implementation of new license check.

### Version 2.0.0.1 from 04.11.2022
 - Improved form for license orders
 - Compatibility with **Connector 365 Addressee Control** App

### Version 2.0.0.0
 - Sending of purchase documents (Purchase Order, Posted Return Order)
 - Dependency from the new version of app Connector 365 Base (2.0.0.0)
 - Moved table "joblist Entry" to "Activity Entry"

### Version 1.1.0.1
- Automated status request for pending E-POST letters via job queue.
- Specific special characters (",\\) within address information no longer result in errors during processing.
- Overflowing address information will no longer be considered, that erros no longeroccur during processing

### Version 1.0.1.10
- Country codes are automatically read during installation and written to the "Countries/Region" table. 
- Global presetting for dialog and letter parameters possible in the "Connector 365 Setup" page. 
- New field "Use for E-POST" added to "Report selection sales" and "Report selection reminder". Only reports with a check mark are taken into account. 
- Test period changed to 30 days. Previously, 5 free letters were possible here. 

### Version 1.0.1.3
- Bug fixes in the setup

### Version 1.0.1.2
- Bug fixes
- Integration to Easy Batch

### Version 1.0.1.1
- Corrections in the translation

### Version 1.0.1.0
- Sending of other document types (credit notes, reminders, quotations, orders)
    - Posted Sales Credit Memos
    - Issued Reminders
    - Quotes
    - Sales orders

- Sending duplex letters
- Sending status (joblist) in the factbox per document in the overview
- Two boxes for the joblist in the Role center
- The Connector 365 XRechnung app now relies on our base app

### Version 1.0.0.5
- Sending E-POST letters from posted sales invoices
- Shipping in color or b/w
- Registered mail (posting/return receipt)
- Archiving sent letters
- Shipping abroad


***The Connector 365 E-POST App is powered by the E-POSTBUSINESS API, a service of the Deutsche Post**#