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

The settings to be able to send invoices and credit notes in XRechnung format are made on the respective customer. Under **"Navigate" - "Document layouts"** of the respective customer.

When you open the document layouts, new fields are now available.
**XRechnung", "Ident ID" and "Add document as attachment"**.

![](images/XRechnung/XRechnungScreenshot2.PNG)

In the **"XRechnung"** field, place a check mark to activate the function that invoices/credit notes for this customer should be sent as XRechnung.
 
In the field **"Ident ID"** the Ident ID of the customer is entered. This is necessary to uniquely identify an invoice recipient. This field is subject to a syntax check and only allows valid Ident IDs.

In the field **"Add document as attachment"** you have 3 selection options which determine how the original document and any attachments are handled.

![](images/XRechnung/xrechnungbeleganhang.PNG)

**No** - The original document will not be sent additionally, only the XML of the XRechnung will be sent.

**Embedded** - The original document will be sent, but will be embedded in the XML of the XRechnung. Further attachments are also embedded in the XML. These can be read later by machine.

**PDF** - The original document is attached as a PDF in addition to the XML of the XRechnung. Other attachments are also attached as usual.

If the checkmark for XRechnungis set, a correct Ident ID is stored, the desired attachment option is selected and all necessary master data is entered, invoices/credit notes can be sent in XRechnung format.