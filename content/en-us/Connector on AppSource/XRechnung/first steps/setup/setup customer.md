---
title: "Customer"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Setup

### Customer

![](images/XRechnung/XRechnungScreenshot1.png)

To be able to send invoices in XInvoice format, you need to make settings under the **“Document Layouts”** of the respective customer.

This can be found on the customer’s page under:
**„Navigate“ -> „Document Layouts“**

After installing the app, there are three new columns named **“XRechnung”, Ident ID" and “Add Document as Attachment”** on the page.

![](images/XRechnung/XRechnungScreenshot2.PNG)

In the **“XRechnung”** field, place a check mark to indicate that invoices for this customer should be sent as XInvoices.

In the field **“Ident ID”** the Ident ID of the customer is entered. This is necessary to uniquely identify a bill recipient. This field is subject to a syntax check and only allows valid Ident IDs.

In the field **“Add Document as Attachment”** you have 3 options, which determine how the original document and attachments are handled.

**No** - The original document will not be sent additionally, only the XML of the XRechnung will be sent. Regular attachments are sent as usual.

**Embedded** - The original document is sent along, but is embedded in the XML of the XRechnung. Further attachments are also embedded in the XML. These can be read out later by machine.

**PDF** - The original receipt is attached as a PDF in addition to the XML of the XRechnung. Other attachments are also attached as usual.

If the checkmark for XRechnung is set, a correct Ident ID is stored and the desired attachment option is selected, invoices can be sent in XRechnung format.