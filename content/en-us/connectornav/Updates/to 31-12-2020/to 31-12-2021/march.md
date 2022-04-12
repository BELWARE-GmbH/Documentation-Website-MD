---
title: "March"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### New features:

**New Templates Service Invoice/Credit Memo**.
In the templates you can now find fully configured templates for the two reports Service Invoice and Service Credit Note.

**New Events** - [DOKU](doc missing)
Developers can now use various events for XML ports.

### Enhancements to standard features:

**Type of XRechnung attachment in matrix** - [DOKU](/en/connectornav/data-exchange/)
In the communication matrix you can now define via "XRechnung PDF as attachment" how attachments are handled for XRechnungs

**XRechnung/Peppol fields in dialog** - [DOKU](/en-en/connectornav/data-exchange/)
The dialog now has fields that allow customizing aspects of XRechnung shipping, such as the routing ID in the process.

**Expansion of job list fields in XRechnung** - [DOKU](/en-en/connectornav/data-exchange/)
The fields "XRechnung PDF as attachment" and "Routing ID" can now be viewed in the job list.

**Expansion of the job list fields in the XRechnung area** - [DOKU](/en-en/connectornav/data-exchange/)
The fields "XRechnung PDF as attachment" and "Routing ID" can now be viewed in the job list.

**Invoice attachment when sending reminders** - [DOKU](/en/connectornav/data-exchange/)
It is now possible to activate an automatic sending of reminded invoices via the setup.

### Optimizations:

- The XRechnung setup has been moved from configuration to setup. - [DOKU](/en-en/connectornav/configuration-and-setup/)
- Setup has been split into per-client setup and global setup. - [DOKU](/en-en/connectornav/configuration-and-setup/)
- Version is now listed as a separate item. - [DOKU](/en-en/connectornav/configuration-and-setup/)
- When sending SMS, a filelist was calculated that does not exist in SMS. This has now been corrected.
- Various minor optimizations and fixes aimed at improving the user experience.