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
- Enhancements to shipment status information
  * Processing status in the destination area
  * Franking ID
- Simplification for 'Registered mail return receipt'

### Version 2.9.0.7 - 24.09.2024
Corrections:
- Removed unneeded contact table query to avoid errors when using the app with predefined address data.

### Version 2.9.0.6 - 17.07.2024
Corrections:
- Check whether address line exists before transfer.
- Correction of a spelling error in the address data.
- Removal of quotation marks when transferring address data.

### Version 2.9.0.5 - 11.04.2024
Corrections:
- Correction of the setting of the address data.

### Version 2.9.0.4 - 05.04.2024
Corrections:
- Correction of a spelling error when setting the address data.

### Version 2.9.0.3 - 15.03.2024
Corrections:
- Output of the correct error message if the login fails.

### Version 2.9.0.2 - 08.03.2024
Corrections:
- When no E-POST report is setup in report selections, a message will be displayed.

### Version 2.9.0.1 - 04.03.2024
Corrections:
- The *Send as* function works again with E-POST 

### Version 2.9.0.0 - 01.03.2024
New Features:
- Establish compatibility with the new Easy Batch version

### Version 2.8.0.3 - 18.12.2023
Corrections:
- Fixed sending of multiple documents with document sending profile.

### Version 2.8.0.2 - 25.10.2023
Corrections:
- Fixed sending of multiple documents from list pages.

### Version 2.8.0.1 - 24.10.2023
New Features:
- New Event: OnBeforeOpenDialog to change E-POST parameters.

### Version 2.8.0.0 - 24.10.2023
New Features:
- New EVent: OnBeforeOpenDialog to change E-POST parameters.

### Version 2.7.0.0 - 06.09.2023
New Features:
- Call of event OnAfterCompleteC365Activity after the E-POST process is completed.

### Version 2.6.0.0 - 07.08.2023
- New Event **OnBeforeWriteJSONContent** for overriding address data.
- Implementation of E-POST in the functions of the doucment sending profile
- Improvement of E-POST setup:
  - Credentials can now be copied from another company.
  - Contact data of the E-POST administrator (e-mail address, mobile no.) can now be changed from within the setup.
### Version 2.5.0.0 - 22.05.2023
- Support for document types from service area

### Version 2.4.0.3 - 14.04.2023
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