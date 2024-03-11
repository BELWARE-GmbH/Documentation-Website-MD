---
title: "New and planned"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: true
weight: 1
---

# New and planned

## Planned

### March 2024
 - Setup assistant (wizard)

## Released versions

### Version 2.9.0.0 - 01.03.2024
- Establish compatibility with the new Easy Batch version

### Version 2.8.0.6 - 02.02.2024
New features:
 - Load XRechnung version 3.0 as default value

### Version 2.8.0.3 - 11.12.2023
Corrections:
 - The definded email subject from Mail Subject Plus will now set for XRechnung as well.

### Version 2.8.0.2 - 06.11.2023
Corrections:
 - Correction of the display of XRechnung status in role center:
   -> Sent XRechnung in the last 30 days
   -> Draft XRechnung in outbox

### Version 2.8.0.0 - 31.08.2023

New features:
- Extension of [document sending profiles](en-us/apps/xrechnung/first-steps/setup/doc-sending-profile) with the possibility of XRechnung processing

### Version 2.7.0.0 - 25.08.2023
New features:
 - Extension of [Communication matrix](/en-us/apps/base/first-steps/setup/communication-matrix/) by fields:
    * Buyer Reference
    * Add Document as Attachment

### Version 2.5.0.3 - 31.07.2023
New features:
 - Compatibility with XRechnung 2.3
 - Ident-Id (Leitweg-Id) check only optional - no longer leading to error
 - Possibility to set XRechnung version and identifier in setup

Correction:
 - Fixes permission issues when using XRechnung using supplied permission sets.

### Version 2.4.0.1 - 31.05.2023
Correction:
- Fixes insufficient permissions at XRechnung creation and sending

### Version 2.4.0.0 - 22.05.2023
New features:
* Integration of **Connector 365 Mail Attachments Plus**
* Possibility to flexibly set in the dialog which attachments are embedded in the XRechnung XML file and which are considered as additional attachments via mail

### Version 2.3.0.1 - 26.04.2023
Correction:
- Writing a negative validation report when sending via Easy Batch no longer results in an error.
### Version 2.3.0.0 - 14.04.2023
- Implementation of additional table for saving additional files for each process.
### Version 2.2.0.0 - 06.01.2023
- Implementation of new license check.

### Version 2.1.0.2 from 17.11.2022
- Error Correction: Using the app together with other COnnector 365 Apps Easy Batch and Addressee Control no longer results in an error. 

### Version 2.1.0.0 from 04.11.2022
- Compatibility with **Connector 365 Addressee Control** App
- Improved form for license orders

### Version 2.0.0.0 from 21.10.2022
#### Correction
- The usage combined with apps Mail Subject Plus and Easy Batch no longer results in an error during the send process.
- Changes within the Email dialog no longer result in an error.

### Version 2.0.0.0 from 23.09.2022
- Dependency from the new version of app Connector 365 Base (2.0.0.0)
- Transfering table "Joblist Entry" to "Activity Entry"

### Version 1.0.1.23
- Compatibility with XRechnung 2.2

### Version 1.0.1.22
- Improvements in the integration of ***Connector 365 Easy Batch*** app

### Version 1.0.1.18
- Possibility to control and overwrite XML fields by event.

### Version 1.0.1.11
- Document layout now overrides report selection per usage. 
- Error correction dialog: Subpage "Attachments" was displayed twice. 
- The correct e-mail layout is now always used.
- Service area is now available for XRechnung.

### Version 1.0.1.5
- Bug fixes
- Support for service invoices and service credit notes

### Version 1.0.1.3
- Bug fixes
- Integration to Easy Batch

### Version 1.0.1.1
- The Connector 365 XRechnung app now relies on our base app
- Adding events to control the XRechnung
- Bug fixes

### Version 1.0.1.0
- Status tracking in Role center
- Invoice accompanying attachments
- Revised XRechnung dialog
- Syntax check of Ident ID
- Extension of input for Ident IDs
- XRechnung version adapted

### Version 1.0.0.1
- Creating an XRechnung XML file
- Sending the XRechnung by mail using the standard BC Mail dialog.
- Sending of a validation report, which confirms the conformity of the invoice to the recipient.
- Displaying the validation report for the user in case of "non-conformity"
- Aborting the sending in case of "non-conformity"
- Improvement of the WebService query / DLL for the check report