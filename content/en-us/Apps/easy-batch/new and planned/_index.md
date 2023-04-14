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

### Version 2.6.0.0 - 13.04.2023
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