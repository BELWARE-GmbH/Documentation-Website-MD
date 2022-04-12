---
title: "January"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### New in the documentations:

Our documentations have been adapted according to the new features. In which documentation individual points can be found is listed.

[To the documentation](/en-en/connectornav/)

### Enhancements to standard features:

**Consideration of delivery bills in the mode "Post & Process "**.
The "Post & Process" function now also generates delivery bills, if applicable, and also processes them as previously set up in the communication matrix. For more information, see the documentation for the communication matrix.

**Attachments for the XRechnung**
Attachments that are included when sending an XRechnung are now embedded in the XRechnung XML. For more information see the documentation for Peppol & XRechnung.JanuaryHeaderIcon

**New XRechnung version**
XRechnungs are now created in the latest 2.0 version. For more information, see the documentation for Peppol & XRechnung.

**Own validation server**
For security reasons, many customers have wished to host the validation server for XRechnung themselves. This can now be controlled via the configuration. Validation can now also be turned off completely. More information can be found in the documentation for Peppol & XRechnung.

**Sales credit notes in XRechnung format**.
The XRechnung module now also allows the creation of sales credit notes. For more information, see the documentation for Peppol & XRechnung.

**Check of the routing ID**
The routing ID is now checked by the Connector NAV for its syntax, i.e. whether it consists of valid components and is allowed. It is not checked whether the ID really exists. For more information see the documentation for Peppol & XRechnung.

**Remove attachments 1-4 & update attachments lines**.
The old function "Attachments 1-4" has been removed from the dialog and user reports. Attachments lines have been adjusted to allow multiple selection of attachments and buttons have been moved from the menu bar to the tab. For more information, please refer to the Email Module & Configuration/Setup documentation.

**Control of the contact card during calls**.
It is now possible to determine when the contact card opens on calls. Either on call or only on answer.

**New template
There is now a template for sending segments.

**Translations**
Many tooltips now have a translation for the English language.

### Optimizations:

- Bug in a code unit caused server processing with instant generation to always try to generate a PEPPOL invoice - This has now been fixed.
- The standard printing of Dynamics NAV / BC is now also logged in the job list.
- Multiple files can now be selected at the same time when uploading attachments.
- The E-Post button of the old API has been finally removed.
- Completed phone calls are now archived before they are processed.
- HTTP requests are now handled as recommended by Microsoft instead of via an external DLL.
- Body texts are now opened using Windows text coding.
- Pages are now opened only if they can be opened.
- The route ID is now displayed in the job list.

### Other:

**New RapidStart packages**
In our download section you can now find a package for version 2013R2 and the package for version BC14 has been updated.