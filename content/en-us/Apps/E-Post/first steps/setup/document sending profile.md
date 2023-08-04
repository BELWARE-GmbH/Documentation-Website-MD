---
title: "Document Sending Profile"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 4
---
## Setup

### Document Sending Profile

The document sending profile is a standard functionality of Microsoft Dynamics 365 Business Central.

It is used to control the preferred method of sending sales documents. By default, the functionality is intended for use with **"Post and Send"**. Connector 365 E-POST extends this functionality by adding the option **E-POST** to the possible profiles.

#### Set up document send profiles

To set up a document sending profile

1. Open the search, type document sending profile and then select the appropriate link.
2. On the Document Sending Profiles page, choose the New action.
3. Fill in the fields as necessary. Hover over a field to read a short description.

![](images/apps/E-POST/en-us/app_document_sending_profile.png)

After you have set up the document sending profiles, you should set one as default, this one takes effect if no specification of the document send profile has been made in a customer.

#### To specify a sending profile on a customer card

1. Open the search, enter customers, and then select the associated link.
2. Open the card of the customer who you want to set up a sending profile for.
3. In the Document Sending Profile field, select a profile that you have set up as described in the previous procedure.

![](images/apps/E-POST/en-us/app_customer_document_sending_profile.png)