---
title: "Customer"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Customer


The customer-specific settings for sending XRechnung are made in the **Document layouts** of the respective customer.
![](images/XRechnung/XRechnungScreenshot1.png)

When you open the document layouts, the following additional fields will be available after installing the **Connector 365 XRechnung** app:
- **Buyer Reference**
- **Add document as attachment**
- **XRechnung Syntax**

![](/images/apps/XRechnung/us/xr-doc-layout.png)
 
#### Buyer Reference

In the field **Buyer Reference** the id of the customer is entered. This is necessary to uniquely identify an invoice recipient.

{{< notice info >}}
The customer reference can also be set in the e-mail dialog, i.e. it does not necessarily have to be set in the document layouts.
{{< /notice >}}

<br>

#### Add document as attachment

In the **Add document as attachment** field, you have three choices that determine how the original document and any attachments are handled.

![](images/apps/XRechnung/us/xr-embed-options.png)

**No** - The original document will not be sent additionally, only the XML of the XRechnung will be sent.

**Embedded** - The original document will be sent, but will be embedded in the XML of the XRechnung. Further attachments are also embedded in the XML. These can be read later by machine.

**PDF** - The original document is attached as a PDF in addition to the XML of the XRechnung. Other attachments are also attached as usual.

#### XRechnung syntax

The **XRechnung syntax** field determines which syntax is used to generate XRechnung invoices.
By default, UBL is used - the format that was previously used exclusively in our extension **Connector 365 XRechnung**.
Since version **2.16.*.0**, the CII format can also be used for the first time.
You can find out more about the **XRechnung syntax** theme [here](en-us/apps/xrechnung/first-steps/setup/base-setup#xrechnung-syntax).

{{< notice info >}}
XRechnung-CII is currently only supported for the **Invoice** document type.
{{< /notice >}}

#### ZUGFeRD

If the **Connector 365 PDF** app is installed, the **Conformance Level** can be set to **PDF/A-3B**.
In combination with the **CII** syntax, a ZUGFeRD-PDF is now created and sent instead of a simple XML.

![](images/apps/XRechnung/us/xr-cust-rep-selection-conf-level.png)

#### Send to Email

When sending the XRechnung, the email address from the ***Send to Email*** field is used as the email recipient.

|![](images/apps/XRechnung/us/xr-cust-rep-selection-sent-to.png)|
|-|

If this field is not filled and the option [***Use Customer Email as Fallback***](en-us/apps/xrechnung/first-steps/setup/base-setup) is set, the e-mail address of the debtor is used as an alternative.

Our ***Connector 365 Addressee Control*** extension offers even finer control options for e-mail addresses. You can find out more [here](en-us/apps/addressee-control).