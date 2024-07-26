---
title: "New and Planned"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---

### New and Planned

### Planned functions for future versions
- Implementation of new document types from purchase as well as service.

### Version 2.16.0.0 - 12.07.2024
New features:
- The event call OnAfterCreatePdfFileFromReport has been replaced by OnAfterCreateReportPdfFile.
- Two fields have been added to the Connector 365 Open Task table: Report Selection Sequence and Cust. Rep. Selection Sequence.

### Version 2.15.0.28 - 05.07.2024
Corrections:
- Integration with Report Layout Plus corrected.

### Version 2.15.0.27 - 29.06.2024
Corrections:
- Fixed check for empty report selection.

### Version 2.15.0.26 - 26.06.2024
Corrections:
- Correction to check for unset email text.

### Version 2.15.0.25 - 20.06.2024
Corrections:
- Corrected use of the report selection variable.

### Version 2.15.0.24 - 19.06.2024
Corrections:
- Transfer of the wrong record to the SetReportParameters function fixed.

### Version 2.15.0.23 - 17.06.2024
Corrections:
- Fixed an error when setting the app ID of the report layouts.

### Version 2.15.0.22 - 04.06.2024
Corrections:
- Third-party report layouts are now fully supported.

### Version 2.15.0.21 - 04.06.2024
Corrections:
- The action "Preview Email Text" on the page "Connector 365 Open Tasks" now always downloads the file with the ending ".html"

### Version 2.15.0.20 - 23.05.2024
Corrections:
- When setting reminders as a task via the registration process, only a single message that the documents have been set for processing is displayed.

### Version 2.15.0.19 - 23.05.2024
Corrections:
- Error when using the report layouts if a document layout entry exists.

### Version 2.15.0.18 - 21.05.2024
Corrections:
- Fixed error when running multiple reports in one operation.

### Version 2.15.0.17 - 16.05.2024
Corrections:
- When setting tasks via the booking process, only a single message that the documents have been set for processing is now displayed.

### Version 2.15.0.16 - 16.05.2024
Corrections:
- Compatibility for versions < BC23 established.

### Version 2.15.0.15 - 15.05.2024
Corrections:
- Compatibility for versions < BC23.6 established.

### Version 2.15.0.14 - 15.05.2024
Corrections:
- Fixed an error when using the report layouts.

### Version 2.15.0.13 - 22.04.2024
Corrections:
- Fixed a bug in the license check.

### Version 2.15.0.12 - 18.04.2024
Corrections:
- Error when deleting open tasks corrected.

### Version 2.15.0.11 - 11.04.2024
Corrections:
- Address data is now correctly transferred to the Connector 365 E-POST app.

### Version 2.15.0.10 - 03.04.2024
Corrections:
- Open tasks are also deleted when executing the action *Cancel Processing* if the task no longer exists.

### Version 2.15.0.9 - 02.04.2024
Corrections:
- Missing object permissions added.

### Version 2.15.0.9 - 02.04.2024
Corrections:
- Missing object permissions added.

### Version 2.15.0.8 - 27.03.2024
Corrections:
- Compatibility for versions < BC21 established.

### Version 2.15.0.7 - 26.03.2024
Corrections:
- Corrected setting of e-mail addresses from the document layouts.

### Version 2.15.0.6 - 22.03.2024
Corrections:
- Initial value of the field *recipient type* corrected. 

### Version 2.15.0.5 - 21.03.2024
Corrections:
- The correct report layout is now used for the preview.

### Version 2.15.0.4 - 19.03.2024
Corrections:
- PDF and print processes are now also executed.
- When ending a task, the data of all reference tables is also deleted.
- The document preview is only executed with existing parameters.

### Version 2.15.0.3 - 14.03.2024
Corrections:
- Added missing User ID in the *Connector 365 Open Tasks* and *Connector 365 Activities* page.

### Version 2.15.0.2 - 08.03.2024
Corrections:
- Removed not required app dependency so that the app is also compatible with older BC versions.

### Version 2.15.0.1 - 04.03.2024
Corrections:
- Report layouts are set correctly according to the standard.
- The use of XRechnung in the document sending profile no longer leads to errors.

### Version 2.15.0.0 - 01.03.2024
New features:
- Extension of open tasks to include all shipping parameters that can be controlled in the connector.
- Preview function in the open tasks.

### Version 2.14.0.1 - 23.11.2023
Corrections:
- The ID of the e-mail message is now correctly written to the list of Connector 365 activities.

### Version 2.14.0.0 - 22.11.2023
New functions:
- The recipient email address is now set via a standard function.

### Version 2.13.0.1 - 12.10.2023
Corrections:
 - Sending documents without a "Sell-To E-Mail" field when the document layout does not exist no longer causes errors.
 - The function call from service documents now also passes the correct filter, so that not all documents from the list are set for processing.
 - E-mail confirmations are now always written correctly to the feedback table.
 - An authorization error has been fixed.

### Version 2.13.0.0 - 11.10.2023
New functions:
 - Added several events to override the Easy Batch parameters.

### Version 2.12.0.1 - 05.09.2023
Corrections:
 - Fixes errors with batch sending using document sending profile setup

### Version 2.12.0.0 - 25.08.2023
New features:
 - Extension of [Communication Matrix](/en-us/apps/base/first-steps/setup/communication-matrix/) by fiels:
    * Batchmode
    * Jobmode

### Version 2.10.0.0 - 08.08.2023
New features:
 - Adjustability of a time interval for processing open tasks.

### Version 2.9.0.0 - 07.08.2023
New features:
 - Release function to open tasks.
 - Compatibility with Connector 365 Custom Filename established.
 - Compatibility with E-POST document sending profile established.

Corrections:
 - Multiple email recipients are now passed correctly and no longer cause errors when sending.
 - Missing permissions when using automatic sending no longer lead to error when setting tasks.
### Version 2.7.0.0 - 22.05.2023
New features:
 - Support of document types from the service area

### Version 2.6.0.0 - 14.04.2023
- Implementation of additional table for saving additional files for each process.
- Implementation of API pages for the use of Power Automate.
- Support for the app Mail Scenarios Plus.
### Version 2.5.0.0 - 02.03.2023
- Immediate information that the documents are enqueued for processing, when executing the action **Send via Batch**.
- Immediate information that the selected tasks are enqueued for retry, when tasks are retried.
- Email status for failed dispatch can now be viewed in Connector 365 Activities.
- Documents will now only be saved in Connector 365 Activities, when this setting is checked in Base Setup.
### Version 2.4.0.0 - 16.02.2023
- Compatibility with **Connector 365 SMTP2FAX** App
- View callstack for failed Easy Batch tasks
### Version 2.3.0.0 - 06.01.2023
Implementation of new license check:
- From now on all Business Central users within the production environment will be considerd for licensing and billing.

- Extended purchasing department with purchase quotes.
- Autamted processing of purchase orders and purchadse quotes.
- Error correction for setting the email sender.
  The email sender was not set correctly for the single scenarios.

### Version 2.0.0.1 - 04.11.2022
 - Compatibility with **Connector 365 Addressee Control** App
 - Improved form for license orders

### Version 2.1.0.0
Improvements:
 - Implementation of rety functionality for open tasks, which ran into an error.
 - Navigation to the document from the list of open tasks.
 - Error message now included as a text field in the table for open tasks.

### Version 2.0.0.0
Improvements:
 - Implementation of background processing
 - Adapting the standard when retrieving the E-Mail address of the recipient
 - Automated sending after posting documents 
 - Sending documents from purchase(purchase orders, posted return shipments)

### Version 1.0.0.17
Corrections:
 - Correction when passing records to ***Easy Batch*** function
   -- Fixes possible multiple selection error

### Version 1.0.0.13
Improvements:
 - The system now checks whether report parameters are stored and uses them to generate the report.

Corrections:
 - Correction when reading the document layouts:
  -- For multiple entries with the same report ID for a debtor

### Version 1.0.0.11
- Correction: Progress bar of the currently processed documents corrected

### Version 1.0.0.10
- Integration of the ***Connector 365 pdfPaper*** app.

### Version 1.0.0.8
- Fix: Negative status if E-Mail Codeunit fails 
- Fix: Write E-Mail related information to joblist

### Version 1.0.0.7
- Dialog Pages only if allowed (GuiAllowed)

### Version 1.0.0.6
- Logic when selecting the report layout aligned with the standard

### Version 1.0.0.0
- Intelligent process control
- Batch processing of documents
- Control via document sending profiles