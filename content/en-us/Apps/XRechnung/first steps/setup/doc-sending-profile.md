---
title: "Document Sending Profile"
date: 2023-08-31
description: 
draft: false
collapsible: false
weight: 
---

## Setup

### Document Sending Profile

The document sending profile is a standard functionality of Microsoft Dynamics 365 Business Central.

It is used to control the preferred method of sending sales documents. By default, the functionality is intended for use with **"Post and Send"**. **Connector 365 XRechnung** extends this functionality by adding the option **XRechnung** to the possible profiles.

#### Set up document send profiles

To set up a document sending profile

1. Open the search, type document sending profile and then select the appropriate link.
2. On the Document Sending Profiles page, choose the New action.
3. Fill in the fields as necessary. Hover over a field to read a short description.

|![](images/apps/XRechnung/us/doc-sending-profiles.png)|
|-|

After you have set up the document sending profiles, you should set one as default, this one takes effect if no specification of the document send profile has been made in a customer.

{{< notice warning Notice>}}
Please note that XRechnung processing is only working for [supported document types](en-us/apps/xrechnung/first-steps/introduction).
{{< /notice >}}

#### To specify a sending profile on a customer card

1. Open the search, enter customers, and then select the associated link.
2. Open the card of the customer who you want to set up a sending profile for.
3. In the Document Sending Profile field, select a profile that you have set up as described in the previous procedure.

![](images/apps/XRechnung/us/customer-doc-sending-profiles.png)