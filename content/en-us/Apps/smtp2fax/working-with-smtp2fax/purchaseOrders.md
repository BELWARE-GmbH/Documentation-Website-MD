---
title: "Purchase Orders"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 4
---
### SMTP2FAX in Purchase Orders

On the purchase orders page, the function can be found in the "Print/Send" menu. 

![](images/apps/smtp2fax/en/SMTP2FAX_purchOrders.png)

The fax number used is selected according to the following logic: 
First, the document layouts of the vendor specified as the recipient are searched for a fax number entered for use with purchase orders. If none is found there, the fax number entered in the supplier's card is used. 

The function can also be found on the page of a single purchase order in the "Print/Send" menu. 

![](images/apps/smtp2fax/en/SMTP2FAX_purchOrder.png)

The logic for selecting the recipient's fax number is also the same as described above. 

After pressing the SMTP2FAX button, the report is created and a [dialog window](en-us/apps/smtp2fax/working-with-smtp2fax/smtp2faxdialog/) opens for further editing. 