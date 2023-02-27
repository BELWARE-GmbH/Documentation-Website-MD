---
title: "Document Sending Profile"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
## Setup

### Document Sending Profile

The document send profile is a standard functionality of Microsoft Dynamics 365 Business Central.

It is used to control the preferred method of sending sales documents. By default, the functionality is intended for use with **"Post and Send"**. However, with Connector 365 Easy Batch, document send profiles can also be used to control the batch function.

#### Set up document send profiles

To set up a document sending profile

1. Open the search, type document sending profile and then select the appropriate link.
2. On the Document Sending Profiles page, choose the New action.
3. Fill in the fields as necessary. Hover over a field to read a short description.

![](images/apps/easydocumentsendingen.PNG)

Nachdem Sie die Belegsendeprofile eingerichtet haben, sollten Sie noch eins als Standard setzen, dieses greift, wenn in einem Debitor keine Angabe zum Belegsendeprofil gemacht wurde.

#### To specify a sending profile on a customer card

1. Open the search, enter customers, and then select the associated link.
2. Open the card of the customer who you want to set up a sending profile for.
3. In the Document Sending Profile field, select a profile that you have set up as described in the previous procedure.

![](images/apps/easydocumentcustomeren.PNG)

Now, if **no** check mark is placed in the Batch Mode field in the Document Layouts and the Job Mode field has been left **empty**, the setup you just made will take effect.





