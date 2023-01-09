---
title: "Posted Sales Credit Memos"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### SMTP2FAX in Posted Sales Credit Memos

On the posted sales credit memos page, the function can be found in the "Print/Send" menu. 

![](images/apps/smtp2fax/en/SMTP2FAX_postedSalesCrMemos.png)

The fax number used is selected according to the following logic: 
If a different invoice recipient is specified in a sales credit memo, a search is made in its document layouts for a fax number entered for use with sales credit memos. If none is found there, the fax number entered in the invoice recipient's card is used. 

If no different invoice recipient is specified, the same prioritization applies to the customer. 
First, the system searches for a fax number specified for sales credit memos in their document layouts. If none is found, the one from the customer's card is used. 

The function can also be found on the page of a single posted sales credit memo in the "Print/Send" menu. 

![](images/apps/smtp2fax/en/SMTP2FAX_postedSalesCrMemo.png)

The logic for selecting the recipient's fax number is also the same as described above. 

After pressing the SMTP2FAX button, the report is created and a [dialog window](en-us/apps/smtp2fax/working-with-smtp2fax/smtp2faxdialog/) opens for further editing. 