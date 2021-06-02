---
title: "Events"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 4
---
### Working with XRechnung

### Events
We offer you the possibility to link into our programming logic with events, here we describe how this works.

To subscribe an event for sales invoices or service invoices, the XML port **BEL365 S. Inv. XRechnung 2.0** must be specified in an **EventSubscriber**.

**Beispiel:**
![](images/apps/Eventdoku1.PNG)

For sales credit notes or service credit notes, the following XML port must be entered: **BEL365 S. Cr. M. XRechnung 2.0.**

**Example:**
![](images/apps/eventdoku2.PNG)

The XRechnung events offer the possibility to "fill" business terms after they are set by default and before they are further processed, i.e. inserted into the resulting XML file. The business terms are passed as **text** variables. Prepended to these variables is the keyword **VAR**, which indicates that the variables are references to the original variables.

After you have defined a function as a subscriber, you can fill the passed variables as you like and according to your own logic.

**Example***
![](images/apps/eventdoku3.PNG)

The function **SubAfterGetLineInvoicePeriod** is here a subscriber for the event **OnAfterGetLineInvoicePeriodInfo**.

Regardless of the default logic of filling the variables, **InvLineInvoicePeriodEndDate** after generating the XRechnung now contains the value **"2021-04-15"** and thus appears in the resulting XML file. The same procedure applies to all other events.

The following is a list of the available events and the variables to be changed with them.

{{< notice info "Note" >}}
At the beginning of the XML port, it is checked whether the document is a sales document or a service document. Then the associated record variables are transferred to the "Sales Header" and "Sales Line" variables, which are used from there on throughout the XML port. Sales Invoice Example: 

"Sales Invoice Header" -> "Sales Header",
"Sales Invoice Line" -> "Sales Line".

This is the reason why all following events work with "Sales Header" or with "Sales Line".

Translated with www.DeepL.com/Translator (free version)
{{< /notice >}}
#

#### OnGetInvoicePeriod

- InvoicePeriodStartDate : Text
- InvoicePeriodEndDate : Text

The **OnGetInvoicePeriod** event can be used to specify the service date or a service period for an invoice. A period is defined by a start and an end time, each of which should have the following format: "YYYY-MM-DD". Example: 2017-10-01

#### OnAfterGetLineInvoicePeriodInfo

- SalesLine : Record „Sales Line“
- VAR InvLineInvoicePeriodStartDate : Text
- VAR InvLineInvoicePeriodEndDate : Text

This event sets the service date similar to OnGetInvoicePeriod, but at the row level.

#### OnAfterGetAccountingSupplierPartyContact (BG-6)

- SalesHeader : Record “Sales Header”
- VAR ContactName : Text  (BT-41)
- VAR Telephone : Text  (BT-42)
- VAR Telefax : Text
- VAR ElectronicMail : Text  (BT-43)

Business Rules:

BR-DE-2: The group „SELLER CONTACT“ (BG-6) has to be transmitted.

BR-DE-5: The element „SELLER CONTACT POINT“ (BT-41) has to be transmitted.

BR-DE-6: The element „SELLER CONTACT TELEPHONE NUMBER“ (BT-42) has to be transmitted.
 
BR-DE-7: The element „SELLER CONTACT EMAIL ADDRESS“ (BT-43) has to be transmitted.

#### OnAfterGetPaymentTermsInfo

- SalesHeader : Record „Sales Header“
- VAR PaymentTermsNote : Text (BT-20)

**_A text description of the payment terms that apply to the payment amount due (including a description of any discount and late payment terms.) This information element may contain multiple lines and multiple payment term specifications, and may contain both unstructured and structured text. The unstructured text must not contain #._**

Specification XRechnung default and extension 
Version XRechnung 2.0.0 | Version from 16.12.2020

#### OnGetOrderLineReference

- SalesLine : Record „Sales Line“
- VAR OrderLineReferenceLineID : Text BT-132

**Referenced purchase or line reference**

**_An identifier issued by the acquirer for a referenced line item of a purchase order/order._**

**_Note: The order is referred to at invoice level._**

Specification XRechnung default and extension 
Version XRechnung 2.0.0 | Version from 16.12.2020

#### OnAfterGetPaymentMeansInfo (BG-16)

- Sales Header : Record „Sales Header“
- VAR PaymentMeansCode : Text  BT-81
- VAR PaymentChannelCode : Text  BT-82
- VAR PaymentID : Text  BT-83
- VAR PrimaryAccountNumberID : Text  BT-87
- VAR NetworkID : Text

Business Rules:

BR-DE-1:	An invoice (INVOICE) must contain information on "PAYMENT INSTRUCTIONS" (BG-16).

BR-DE-13:	The invoice must include information on one of the three groups "CREDIT TRANSFER" (BG-17), "PAYMENT CARD INFORMATION" (BG-18) or "DIRECT DEBIT" (BG-19).

#### OnAfterGetContractDocRefInfo

- SalesHeader : Record „Sales Header“
- VAR ContractDocumentReferenceID : Text
- VAR DocumentTypeCode : Text
- VAR ContractRefDocTypeCodeListID : Text
- VAR DocumentType : Text

#### OnAfterGetAccountingCustomerPartyInfoBIS

- SalesHeader : Record „Sales Header“
- VAR ContractDocumentReferenceID : Text
- VAR DocumentTypeCode : Text
- VAR ContractRefDocTypeCodeListID : Text
- VAR DocumentType : Text

#### OnAfterGetPaymentMeansPayeeFinancialAccBIS (BG-17)

- VAR PayeeFinancialAccountID : Text (BT-84)
- VAR FinancialInstitutionBranchID : Text (BT-85)
- VAR PayeeFinancialAccountName : Text

#### OnAfterGetLineGeneralInfo

- SalesLine : Record „Sales Line“
- SalesHeader : Record „Sales Header“
- VAR InvoiceLineID : Text
- VAR InvoiceLineNote : Text
- VAR InvoicedQuantity : Text
- VAR InvoiceLineExtensionAmount : Text
- VAR LineExtensionAmountCurrencyID : Text
- VAR InvoiceLineAccountingCost : Text