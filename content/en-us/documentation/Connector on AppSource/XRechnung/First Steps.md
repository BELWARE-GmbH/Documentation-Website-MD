---
title: "First steps"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
![](images/XRechnung/Appsource_Banner_XRechnung.png)

### Introduction
From 27th November 2020 on all vendors of german public clients have to send their invoices in the so called "XRechnung" format. This format is an XML based data model that is being established as the standard for electronic invoicing.

The XRechnung app for Microsoft Dynamics 365 Business Central makes it possible to create electronic invoices according to the XRechnung standard and to send them.  

### Setup

![](images/XRechnung/XRechnungScreenshot1.png)

To be able to send invoices in XInvoice format, you need to make settings under the **"Document Layouts"** of the respective customer.

This can be found on the customer's page under:
**„Navigate“ -> „Document Layouts“**

After installing the app, there are three new columns named **"XRechnung", Ident ID" and "Add Document as Attachment"** on the page.

![](images/XRechnung/XRechnungScreenshot2.PNG)

In the **"XRechnung"** field, place a check mark to indicate that invoices for this customer should be sent as XInvoices. 
 
In the field **"Ident ID"** the Ident ID of the customer is entered. This is necessary to uniquely identify a bill recipient. This field is subject to a syntax check and only allows valid Ident IDs.

In the field **"Add Document as Attachment"** you have 3 options, which determine how the original document and attachments are handled.

**No** - The original document will _not_ be sent additionally, only the XML of the XRechnung will be sent. Regular attachments are sent as usual.

**Embedded**- The original document is sent along, but is embedded in the XML of the XRechnung. Further attachments are also embedded in the XML. These can be read out later by machine.

**PDF** - The original receipt is attached as a PDF in addition to the XML of the XRechnung. Other attachments are also attached as usual.

If the checkmark for XInvoice is set, a correct routing ID is stored and the desired attachment option is selected, invoices can be sent in XInvoice format.

### Important setup points

Since an XRechnung must always correspond to a certain scheme, it can happen that the first generated XRechnung is faulty.

The exact errors can be identified from the test report and the official [Codelist](https://docs.peppol.eu/poacc/billing/3.0/codelist/). We are happy to support you in the process of cleaning up your XRechnung.

Now for three points, which should be examined before use of the XRechnung. Since this is a frequent source of errors:

#### Checking the VAT Scheme

You should check the VAT scheme codes for the respective countries. For XRechnung, this is normally only Germany.

These can be changed under **"Countries/Region "** in Business Central, the fastest way to find this point is via the search function.

There you change the field **"VAT Scheme "** to the code for the corresponding country. The code for **Germany** is **9930**, all other codes can be found [here](https://docs.peppol.eu/poacc/billing/3.0/codelist/eas/).

![](images/XRechnung/erste_schritte/xrechnungmwst.PNG)

#### Check standard codes for units

Another point worth checking are unit codes. These must have a special designation to be PEPPOL compliant in order to be accepted.

The quickest way to get to the list of unit codes is to use the search function and search for **"Units of Measure"**.

Then you should adjust the field **International Standard Code"** according to the UN/ECE Recommendation [20](https://docs.peppol.eu/poacc/billing/3.0/codelist/UNECERec20/) or [21](https://docs.peppol.eu/poacc/billing/3.0/codelist/UNECERec21/).

![](images/XRechnung/erste_schritte/xrechnungeinheiten.PNG)

#### Check the Tax Category

Finally, it is also worth looking at the tax category, this can be found in the **VAT Posting Setup**, this can again be called up most quickly via the search function.

Here you should now fill the field "Tax category" with the respective designation, you can find this [here](https://docs.peppol.eu/poacc/billing/3.0/codelist/UNCL5305/). In most cases you will only need E S and Z.

![](images/XRechnung/erste_schritte/xrechnungmatrix.PNG)
