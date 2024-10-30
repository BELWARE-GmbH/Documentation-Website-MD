---
title: "Customer"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Customer

![](images/XRechnung/XRechnungScreenshot1.png)

The customer-specific settings for sending XRechnung are made in the **Document layouts** of the respective customer.

When you open the document layouts, the following additional fields will be available after installing the **Connector 365 XInvoice** app:
- **Buyer Reference**
- **Add document as attachment**

![](images/XRechnung/xr_doc_layout_en.png)
 
In the field **Buyer Reference** the id of the customer is entered. This is necessary to uniquely identify an invoice recipient.

{{< notice info >}}
The customer reference can also be set in the e-mail dialog, i.e. it does not necessarily have to be set in the document layouts.
{{< /notice >}}

<br>

In the **Add document as attachment** field, you have three choices that determine how the original document and any attachments are handled.

![](images/XRechnung/xr-embed-optoins.png)

**No** - The original document will not be sent additionally, only the XML of the XRechnung will be sent.

**Embedded** - The original document will be sent, but will be embedded in the XML of the XRechnung. Further attachments are also embedded in the XML. These can be read later by machine.

**PDF** - The original document is attached as a PDF in addition to the XML of the XRechnung. Other attachments are also attached as usual.

You can find more about attachments [here](en-us/apps/xrechnung/working-with-xrechnung/attachments)