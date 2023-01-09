---
title: "Posted Sales Invoices"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### SMTP2FAX in Posted Sales Invoices 
On the posted sales invoices page, the function can be found in the "Print/Send" menu. 

![](images/apps/smtp2fax/en/SMTP2FAX_postedSalesInvoices.png)

The fax number used is selected according to the following logic: 
If a different invoice recipient is specified in an invoice, a search is made in its document layouts for a fax number entered for use with invoices. If none is found there, the fax number entered in the invoice recipient's card is used.

If no different invoice recipient is specified, the same prioritization applies to the customer. 
First of all, a fax number specified for invoices is searched for in their document layouts. If none is found, the one from the customer's card is used. 

The function can also be found on the page of a single posted sales invoice in the "Print/Send" menu. 

![](images/apps/smtp2fax/en/SMTP2FAX_postedSalesInvoice.png)
  
The logic for selecting the recipient's fax number is also the same as described above. 

After pressing the SMTP2FAX button, the report is created and a [dialog window](en-us/apps/smtp2fax/working-with-smtp2fax/smtp2faxdialog/) opens for further editing. 