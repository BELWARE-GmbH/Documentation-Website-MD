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

### Optimizations:

- Bug in a code unit caused server processing with instant generation to always attempt to generate a PEPPOL invoice - This has now been fixed.
- Dynamics NAV / BC default printing is now also logged in the job list.

### Other:

**New RapidStart packages**
In our download section you can now find a package for version 2013R2 and the package for version BC14 has been updated.