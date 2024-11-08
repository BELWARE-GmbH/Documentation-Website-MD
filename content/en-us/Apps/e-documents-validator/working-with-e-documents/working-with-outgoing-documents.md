---
title: "Working with outgoing documents"
date: 2024-10-16
description: 
draft: false
collapsible: true
weight: 2
---

# Working with outgoing documents

To ensure that documents such as posted sales invoices can be properly converted to e-documents in Business Central
to e-documents, it is important that all necessary information is available in the respective documents,
which is essential for the creation of e-documents.

In addition to checks from the current Business Central Standard, **Connector 365 E-Documents Validator** helps with this,
determine **before** posting documents whether data is missing or even whether incorrect data is present in the document to be processed. 
document to be processed. This considerably reduces the effort required for subsequent corrections.

## Requirements for validation in the booking process

Two steps are required to activate validation in the booking process: 

1. The field "Validate E-Documents" must be set. More on this [here](/de-de/apps/e-documents-validator/first-steps/setup/);
2. The customer who is to receive the electronic document is set up accordingly. You can find more information below.


## Set up customer for the electronic document

The following is an example of how a customer can be set up for electronic dispatch using the **Sales invoice** usage.

On the **Customers** page, navigate to a customer for whom you want to generate an electronic document in future and open their card.

Enlarge the **General** tab by clicking on **View more**

|![](images/apps/e-documents-validator/de/out-customer-general.png)|
|-|

Then navigate to the **Document sending profile** field

|![](images/apps/e-documents-validator/de/out-customer-doc-sending-profile.png)|
|-|

Click on **New** to create a new document sending profile. 
If you already have a suitable document sending profile, you can skip the following step.

As soon as the card for the document sending profile opens, first enter a suitable code and a description for the document sending profile. 
for the document sending profile:

|![](images/apps/e-documents-validator/de/out-doc-sending-profile-head.png)|
|-|

For the send options, set the **Electronic receipt** field to **Extended e-receipt service flow**.
Then select a suitable **service flow code**.

|![](images/apps/e-documents-validator/de/out-doc-sending-profile-sending-options.png)|
|-|

## Working with *Connector 365 E-Documents Validator* in the booking process

Enter a new **sales invoice** for the customer you have set up for E-Documents.
When the invoice data is complete, click **Book** to book the invoice.

|![](images/apps/e-documents-validator/de/out-post-sales-invoice.png)|
|-|

As soon as you confirm the posting, Business Central first validates the data itself, as the customer has now been set up to process e-documents.
If this validation is successful, **Connector 365 E-Documents Validator** now performs an additional validation, 
by temporarily creating an e-document of type **PEPPOL-BIS 3** and then validating it.

If errors occur during validation, the document is prevented from being posted.
In this way, any corrections after posting are avoided.

You will be notified of the validation error with a corresponding message.

|![](images/apps/e-documents-validator/de/out-post-error-message.png)|
|-|

As soon as you return, the corresponding validation report opens.

|![](images/apps/e-documents-validator/de/out-post-validation-report.png)|
|-|