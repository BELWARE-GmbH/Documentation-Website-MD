---
title: "March"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---
### Enhancements to standard features:

**Vendor selection and contact selection enhanced with communication matrix**.
The Vendor Selection & Contact Selection pages built into the templates, now both have their own button from which the communication matrix can be accessed.

**New field Use PEPPOL in communication matrix**.
The new field allows you to specify which type of document PEPPOL is used for. Non/invoice/credit memo

More information can be found in the corresponding [documentation](/en/connectornav/data-exchange/).

**Standard for report options in user reports**.
In addition to simply opening the report options in the process, there is now the option to set a default report option that applies to the report in question.
More information about the new options can be found in the [documentation](/en/connectornav/configuration-and-setup/).

**Print on empty job mode in communication matrix**.
If the job mode is left blank in the communication matrix, printing is now done by default.

**Segment dispatch with background processing**
Segment dispatch can now also run via background processing.

### Optimizations:

- The length of the PEPPOL version field in the communication matrix has been extended.
- For a blanket sales order, the correct DocType is now output & the status info now also runs correctly.
- Fixed an error that could cause attachments to be attached multiple times.
- The Customer Name & Account No. fields in the communication matrix have been renamed to Name & No.

### New features:

**pdfPaper**
There is now a path for setting up ZUGFeRD in the pdfPaper setup.