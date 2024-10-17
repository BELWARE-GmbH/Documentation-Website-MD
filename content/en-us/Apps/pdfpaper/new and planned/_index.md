---
title: "New and planned"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### New and planned features of the Connector 365 PdfPaper App

Here you will find all important information and notes about new and planned features of the Connector 365 PdfPaper App.

Simply use either the bottom or left navigation menu.

In case a question could not be answered, we will be happy to help you personally. You will find the necessary contact information on the [support page](en-us/apps/help-and-support/).

#### Planned functions for future versions
- Additional functions from PdfPaper module
- Integration of PDF/A functionality

#### Version 1.9.0.1 - 19.01.2024
Corrections:
- Read and show of ipaper error messages improved.

#### Version 1.9.0.0 - 17.01.2024
New functions:
- Errors during iPaper processing are now output instead of continuing to use the unprocessed PDF.

#### Version 1.8.0.1 - 16.01.2024
Corrections:
- The report usage is now set based on the document header.

#### Version 1.8.0.0 - 08.09.2023
New functions:
- New event *OnBeforeSaveReportAsPdf* to override the report parameters.
- New event *OnBeforeFindReportSelectionStationeryOnAfterSetFilter* to change the report selection.
- New Event *OnBeforeProcessPdf* to override the iPaper functionality.
- Number of printed counters is reset when using the preview function. 

Corrections:
- Added report usage to the report selection filter to prevent the wrong data set from being used.

#### Version 1.7.0.0 - 20.06.2023
New functions:
- Event parameter *ReportUsageGlo* to the events *OnBeforeMergeAttachmentsToIPaperXML* and *OnAfterMergeAttachmentsToIPaperXML* to control attachments depending on the report usage.

#### Version 1.6.0.0 - 11.05.2023
New functions:
- Integration of the product *PDF2Print*, enables the printing of PDFs processed by iPaper on server printers.

#### Version 1.5.0.0 - 08.05.2023
New functions:
- Option to automatically delete the generated PDFs on the file system as soon as a process is completed.

#### Version 1.4.0.0 - 07.05.2023
New functions:
- Use of iPaper functions with every report execution

#### Version 1.3.0.0 - 03.05.2023
New functions:
- Extension to purchasing area
  - Integration of function calls in purchasing area
    -> Blanket purchase orders
    -> Purchase credit memos
    -> Purchase orders
    -> Purchase quotes
    -> Purchase Return Orders
  - Possibility to store stationery in report selection - purchase
  - Possibility to store stationery in document layouts of vendors

#### Version 1.1.0.1 - 10.01.2023
Corrections:
- Correction of priority control for picking the stationery.
#### Version 1.1.0.0 - 04.01.2023
- Implementation of new license check.

New features:
- Assign stationeries per responsibilty center.
#### Version 1.0.0.3
New features:
- Merge multiple PDF files into one
- Automatic rotation of PDF files if they are in landscape format
- Action buttons to remove stationery at the touch of a button
- Stationery can be set up globally under company data

Corrections:
- Correction for file name when previewing pdf stationery
#### Version 1.0.0.0
- Setting of stationery per report & customer
- Create multiple stationery
- Preview function


