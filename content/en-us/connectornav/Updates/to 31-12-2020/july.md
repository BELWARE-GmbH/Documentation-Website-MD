---
title: "July"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 7
---
### Optimizations:

**Outlook N-recipient addresses**
When storing additional destination addresses, which were neither created as CC nor BCC, the address was previously taken as CC instead of the desired equivalent in the "To" field. This is now corrected.

**Consideration of matrix printers**
During batch processing, the additional printers from the communication matrix were not taken into account in the Print job mode. Now it is possible to use these printers as well.

**Correction of PDF preview**
Thanks to corrections in the background, all PDF preview functions (PDF, PDFPaper & PDFPaperServer) can now be used without restrictions.