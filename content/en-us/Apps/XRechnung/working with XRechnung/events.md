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

**Example:**
```al
[EventSubscriber(ObjectType::XmlPort, XmlPort::"BEL365 S. Inv. XRechnung 2.0", 'OnAfterGetLineInvoicePeriodInfo', "", true, true)]
```

For sales credit notes or service credit notes, the following XML port must be entered: **BEL365 S. Cr. M. XRechnung 2.0.**

**Example:**
```al
[EventSubscriber(ObjectType::XmlPort, XmlPort::"BEL365 S. Cr. M. XRechnung 2.0", 'OnAfterGetLineInvoicePeriodInfo', "", true, true)]
```
{{< notice info Note>}}
Some of the business terms listed below **cannot** be changed via the two XML ports mentioned above.
**Connector 365 XRechnung** makes partial use of functions from the Microsoft standard **Codeunit: PEPPOL Management (1605)**.
The events concerned are provided with a note box in this documentation.
{{< /notice >}}
<br>
The XRechnung events offer the possibility to "fill" business terms after they are set by default and before they are further processed, i.e. inserted into the resulting XML file. The business terms are passed as **text** variables. Prepended to these variables is the keyword **VAR**, which indicates that the variables are references to the original variables.

After you have defined a function as a subscriber, you can fill the passed variables as you like and according to your own logic.

**Example:**
```al
[EventSubscriber(ObjectType::XmlPort, XmlPort::"BEL365 S. Inv. XRechnung 2.0", 'OnAfterGetLineInvoicePeriodInfo', "", true, true)]
local procedure SubAfterGetLineInvoicePeriodInfo (
    var Sender: XmlPort "BEL365 S. Inv. XRechnung 2.0"; 
    SalesLine: Record "Sales Line";
    var InvLineInvoicePeriodStartDate: Text;
    var InvLineInvoicePeriodEndDate: Text);
begin
    InvLineInvoicePeriodStartDate := format(SalesLine."Posting Date");
    InvLineInvoicePeriodEndDate := '2021-04-15';
end;
```

The function **SubAfterGetLineInvoicePeriod** is here a subscriber for the event **OnAfterGetLineInvoicePeriodInfo**.

Regardless of the default logic of filling the variables, **InvLineInvoicePeriodEndDate** after generating the XRechnung now contains the value **"2021-04-15"** and thus appears in the resulting XML file. The same procedure applies to all other events.

The following is a list of the available events and the variables to be changed with them.

{{< notice info "Note" >}}
At the beginning of the XML port, it is checked whether the document is a sales document or a service document. Then the associated record variables are transferred to the "Sales Header" and "Sales Line" variables, which are used from there on throughout the XML port. Sales Invoice Example: 

"Sales Invoice Header" -> "Sales Header",
"Sales Invoice Line" -> "Sales Line".

This is the reason why all following events work with "Sales Header" or with "Sales Line".

{{< /notice >}}
#

### GetGeneralInfoBIS

{{< notice info >}}
This event originates from the **Codeunit: PEPPOL Management (1605)**.
{{< /notice >}}

```al
. SalesHeader: Record "Sales Header"
. var ID: Text                   (BT-1)
. var IssueDate: Text            (BT-2)
. var InvoiceTypeCode: Text      (BT-3)
. var Note: Text                 (BT-22)
. var TaxPointDate: Text         (BT-7)
. var DocumentCurrencyCode: Text (BT-5)
. var AccountingCost: Text       (BT-19)
```
<table style="width:100%">
    <tr style="background-color:#eceff1">
        <th> Name </th>
        <th> Business Term </th>
        <th> Semantic Data Type </th>
    </tr>
    <tr>
        <td><b>Invoice number</b></td>
        <td>BT-1</td>
        <td>Identifier</td>
    </tr>
    <tr>
        <td colspan=3>A unique identifier for the invoice that identifies it in the seller's system.</td>
    </tr>
    <tr>
        <td><b>Invoice issue date</b></td>
        <td>BT-2</td>
        <td>Date</td>
    </tr>
    <tr>
        <td colspan=3>The date on which the invoice was issued.</td>
    <tr>
        <td><b>Invoice type code</b></td>
        <td>BT-3</td>
        <td>Code</td>
    </tr>
    <tr>
        <td colspan=3>A code that specifies the function type of the invoice.
                      Note: The invoice type must be specified according to <a href= "https://www.xrepository.de/details/urn:xoev-de:kosit:codeliste:untdid.1001_2">UNTDID 1001</a></td>
    <tr>
        <td><b>Invoice currency code</b></td>
        <td>BT-5</td>
        <td>Code</td>
    </tr>
    <tr>
        <td colspan=3>The currency in which all invoice amounts are stated, with the exception of the total VAT amount, which must be stated in the billing currency.</td>
    </tr>
    <tr>
        <td><b>Value added tax point date</b></td>
        <td>BT-7</td>
        <td>Date</td>
    </tr>
    <tr>
        <td colspan=3>The date on which the VAT becomes relevant for the seller and for the buyer. The application of BT-7 and 8 are mutually exclusive.</td>
    <tr>
    <tr>
        <td><b>Buyer accounting reference</b></td>
        <td>BT-19</td>
        <td>Text</td>
    </tr>
    <tr>
        <td colspan=3>A text value that indicates where the relevant data is to be posted in the financial costs of the acquirer.</td>
    <t/r>
    <tr>
        <td><b>Invoice note</b></td>
        <td>BT-22</td>
        <td>Text</td>
    </tr>
    <tr>
        <td colspan=3>A text note containing unstructured information relevant to the invoice as a whole.</td>
    <tr>
</table>

#### OnGetInvoicePeriod
```al
. SalesHeader: Record "Sales Header"
. VAR InvoicePeriodStartDate : Text (BT-73)
. VAR InvoicePeriodEndDate : Text (BT-74)
```

<table style="width:100%">
    <tr style="background-color:#eceff1">
        <th> Name </th>
        <th> Business Term </th>
        <th> Semantic Data Type </th>
    </tr>
    <tr>
        <td><b>Invoicing period start date</b></td>
        <td>BT-73</td>
        <td>Date</td>
    </tr>
    <tr>
        <td colspan=3>The date on which the billing period begins.</td>
    </tr>
    <tr>
        <td><b>Invoicing period end date</b></td>
        <td>BT-74</td>
        <td>Date</td>
    </tr>
    <tr>
        <td colspan=3>The date on which the billing period ends.
</table>

The **OnGetInvoicePeriod** event can be used to specify the service date or a service period for an invoice. A period is defined by a start and an end time, each of which should have the following format: "YYYY-MM-DD". Example: 2017-10-01

#### OnAfterGetLineInvoicePeriodInfo

```al
. SalesLine : Record „Sales Line“
. VAR InvLineInvoicePeriodStartDate : Text 
. VAR InvLineInvoicePeriodEndDate : Text
```

This event sets the service date similar to OnGetInvoicePeriod, but at the row level.

#### OnAfterGetAccountingSupplierPartyContact (BG-6)

```al
. SalesHeader : Record “Sales Header”
. VAR ContactName : Text  (BT-41)
. VAR Telephone : Text  (BT-42)
. VAR Telefax : Text
. VAR ElectronicMail : Text  (BT-43)
```

<table style="width:100%">
    <tr style="background-color:#eceff1">
        <th> Name </th>
        <th> Business Term </th>
        <th> Semantic Data Type </th>
    </tr>
    <tr>
        <td><b>Seller Contact Point</b></td>
        <td>BT-41</td>
        <td>Text</td>
    </tr>
    <tr>
        <td colspan=3>Details of contact person or contact point (e.g. name of a person, department or office name)</td>
    </tr>
    <tr>
        <td><b>Seller contact telephone number</b></td>
        <td>BT-42</td>
        <td>Text</td>
    </tr>
    <tr>
        <td colspan=3>Telephone number of the contact person or contact point</td>
    <tr>
        <td><b>Seller contact email address</b></td>
        <td>BT-43</td>
        <td>Text</td>
    </tr>
    <tr>
        <td colspan=3>E-mail address of the contact person or contact point</td>

</table>


Business Rules:

BR-DE-2: The group „SELLER CONTACT“ (BG-6) has to be transmitted.

BR-DE-5: The element „SELLER CONTACT POINT“ (BT-41) has to be transmitted.

BR-DE-6: The element „SELLER CONTACT TELEPHONE NUMBER“ (BT-42) has to be transmitted.
 
BR-DE-7: The element „SELLER CONTACT EMAIL ADDRESS“ (BT-43) has to be transmitted.

#### OnAfterGetPaymentTermsInfo

```al
. SalesHeader : Record „Sales Header“
. VAR PaymentTermsNote : Text (BT-20)
```

**_A text description of the payment terms that apply to the payment amount due (including a description of any discount and late payment terms.) This information element may contain multiple lines and multiple payment term specifications, and may contain both unstructured and structured text. The unstructured text must not contain #._**

Specification XRechnung default and extension 
Version XRechnung 2.0.0 | Version from 16.12.2020

#### OnGetOrderLineReference

```al
. SalesLine : Record „Sales Line“
. VAR OrderLineReferenceLineID : Text (BT-132)
```

**Referenced purchase or line reference**

**_An identifier issued by the acquirer for a referenced line item of a purchase order/order._**

**_Note: The order is referred to at invoice level._**

Specification XRechnung default and extension 
Version XRechnung 2.0.0 | Version from 16.12.2020

#### OnAfterGetPaymentMeansInfo (BG-16)

```al
. Sales Header : Record „Sales Header“
. VAR PaymentMeansCode : Text  (BT-81)
. VAR PaymentChannelCode : Text  (BT-82)
. VAR PaymentID : Text  (BT-83)
. VAR PrimaryAccountNumberID : Text  (BT-87)
. VAR NetworkID : Text
```

<table style="width:100%">
    <tr style="background-color:#eceff1">
        <th> Name </th>
        <th> Business Term </th>
        <th> Semantic Data Type </th>
    </tr>
    <tr>
        <td><b>Payment means type code</b></td>
        <td>BT-81</td>
        <td>Code</td>
    </tr>
    <tr>
        <td colspan=3>The means of payment expected or used, expressed as a code. Reference is made to the code list UN/ECE 4461</td>
    </tr>
    <tr>
        <td><b>Payment means text</b></td>
        <td>BT-82</td>
        <td>Text</td>
    </tr>
    <tr>
        <td colspan=3>The means of payment expected or used, expressed in text form</td>
    <tr>
        <td><b>Remittance information</b></td>
        <td>BT-83</td>
        <td>Text</td>
    </tr>
    <tr>
        <td colspan=3>A text value used to link the payment to the invoice issued by the seller</td>
    <tr>
        <td><b>Payment card primary account number</b></td>
        <td>BT-87</td>
        <td>Text</td>
    </tr>
    <tr>
        <td colspan=3>The number of the credit card used for the payment</td>
</table>


Business Rules:

BR-DE-1:	An invoice (INVOICE) must contain information on "PAYMENT INSTRUCTIONS" (BG-16).

BR-DE-13:	The invoice must include information on one of the three groups "CREDIT TRANSFER" (BG-17), "PAYMENT CARD INFORMATION" (BG-18) or "DIRECT DEBIT" (BG-19).

#### OnAfterGetContractDocRefInfo

```al
. SalesHeader : Record „Sales Header“
. VAR ContractDocumentReferenceID : Text (BT-12)
. VAR DocumentTypeCode : Text
. VAR ContractRefDocTypeCodeListID : Text
. VAR DocumentType : Text
```

<table style="width:100%">
    <tr style="background-color:#eceff1">
        <th> Name </th>
        <th> Business Term </th>
        <th> Semantic data type </th>
    </tr>
    <tr>
        <td><b>Contract reference</b></td>
        <td>BT-12</td>
        <td>Document Reference</td>
    </tr>
    <tr>
        <td colspan=3>A clear description of the contract (e.g. contract number).</td>
    </tr>
</table>

#### OnAfterGetAccountingCustomerPartyInfoBIS

```al
. SalesHeader: Record "Sales Header"
. VAR CustomerEndpointID: Text (BT-49)
. VAR CustomerSchemeID: Text (BT-49-1)
. VAR CustomerPartyIdentificationID: Text (BT-46)
. VAR CustomerPartyIDSchemeID: Text (BT-46-1)
. VAR CustomerName: Text (BT-45)
```

<table style="width:100%">
    <tr style="background-color:#eceff1">
        <th> Name </th>
        <th> Business Term </th>
        <th> Semantic Data Type </th>
    </tr>
    <tr>
        <td><b>Buyer electronic address</b></td>
        <td>BT-49</td>
        <td>Identifier</td>
    </tr>
    <tr>
        <td colspan=3>Specifies an electronic address of the purchaser to which an invoice should be sent.</td>
    </tr>
    <tr>
        <td colspan=3><b>Buyer electronic address/Scheme identifier</b></td>
    <tr>
        <td colspan=3>The formation pattern for Buyer electronic address. <br><br> The Electronic Address Scheme code list (EAS) is to be used.
                      The code list is maintained and published by the Connecting Europe Facility.</td>
    </tr>
    <tr>
        <td><b>Buyer identifier</b></td>
        <td>BT-46</td>
        <td>Identifier</td>
    </tr>
    <tr>
        <td colspan=3>An identifier (usually assigned by the seller) of the purchaser, such as the customer number for accounting or the customer number for order management.<br><br>
        Note: No standardized scheme is required for the creation of the Buyer Identifier</td>
    </tr>
    <tr>
        <td colspan=3><b>The identifier of the formation scheme for the “Buyer identifier”.</b>
    </tr>
    <tr>
        <td colspan=3><br>Note: If the element is used, the entry must be selected from the list published by the ISO/IEC 6523 maintenance agency.
        </td>
    </tr>
    <tr>
        <td><b>Buyer trading name</b></td>
        <td>BT-45</td>
        <td>Text</td>
    </tr>
    <tr>
        <td colspan=3>A name by which the acquirer is known, if different from the acquirer's name.</td>
    </tr>
</table>


#### OnAfterGetPaymentMeansPayeeFinancialAccBIS (BG-17)

```al
. VAR PayeeFinancialAccountID : Text (BT-84)
. VAR FinancialInstitutionBranchID : Text (BT-86)
. VAR PayeeFinancialAccountName : Text (BT-85)
```

<table style="width:100%">
    <tr style="background-color:#eceff1">
        <th> Name </th>
        <th> Business Term </th>
        <th> Semantic Data Type </th>
    </tr>
    <tr>
        <td><b>Payment account identifier</b></td>
        <td>BT-84</td>
        <td>Identifier</td>
    </tr>
    <tr>
        <td colspan=3>The identifier of the account to which the payment is to be made: IBAN for payments in the SEPA area, account number or IBAN in the case of foreign payments</td>
    </tr>
    <tr>
        <td><b>Payment account name</b></td>
        <td>BT-85</td>
        <td>Text</td>
    </tr>
    <tr>
        <td colspan=3>Name of the account with a payment service provider to which the payment is to be made. (e.g. account holder) </td>
    </tr>
</table>


#### OnAfterGetLineGeneralInfo

```al
. SalesLine : Record „Sales Line“
. SalesHeader : Record „Sales Header“
. VAR InvoiceLineID : Text
. VAR InvoiceLineNote : Text
. VAR InvoicedQuantity : Text
. VAR InvoiceLineExtensionAmount : Text
. VAR LineExtensionAmountCurrencyID : Text
. VAR InvoiceLineAccountingCost : Text
```
#### OnAfterGetLineItemInfo

```al
 . SalesLine: Record "Sales Line"
 . VAR Description: Text
 . VAR Name: Text
 . VAR SellersItemIdentificationID: Text
 . VAR StandardItemIdentificationID: Text
 . VAR StdItemIdIDSchemeID: Text
 . VAR OriginCountryIdCode: Text
 . VAR OriginCountryIdCodeListID: Text
```

#### OnAfterGetAccountingSupplierPartyLegalEntityBIS
```al
 . SalesHeader: record "Sales Header"
 . var PartyLegalEntityRegName: Text
 . var PartyLegalEntityCompanyID: Text
 . var PartyLegalEntitySchemeID: Text
 . var SupplierRegAddrCityName: Text
 . var SupplierRegAddrCountryIdCode: Text
 . var SupplRegAddrCountryIdListId: Text
```

#### OnAfterGetAccountingSupplierPartyTaxSchemeBIS

```al
 . SalesHeader: record "Sales Header"
 . var TempVATAmountLine: record "VAT Amount Line"
 . var CompanyID: text
 . var CompanyIDSchemeID: text
 . var TaxSchemeID: text
```

#### OnAfterGetAccountingSupplierPartyPostalAddr

```al
 . SalesHeader: record "Sales Header"
 . var StreetName: text
 . var SupplierAdditionalStreetName: text
 . var CityName: text
 . var PostalZone: text
 . var CountrySubentity: text
 . var IdentificationCoder: text
```

#### OnAfterGetAccountingSupplierPartyInfoBIS

```al
 . SalesHeader: record "Sales Header"
 . var SupplierEndpointID: text (BT-34)
 . var SupplierName: text (BT-28)
```

<table style="width:100%">
    <tr style="background-color:#eceff1">
        <th> Name </th>
        <th> Business Term </th>
        <th> Semantic Data Type </th>
    </tr>
    <tr>
        <td><b>Seller electronic address</b></td>
        <td>BT-34</td>
        <td>Identifier</td>
    </tr>
    <tr>
        <td colspan=3>Specifies the electronic address of the vendor to which the application level response to an invoice can be sent.</td>
    </tr>
    <tr>
        <td><b>Seller trading name</b></td>
        <td>BT-28</td>
        <td>Text</td>
    </tr>
    <tr>
        <td colspan=3>A name by which the seller is known, if different from the seller's name.</td>
    </tr>
</table>

#### OnAfterGetSupplierPartyIdentificationID

```al
 . SalesHeader: record "Sales Header"
 . var SupplierPartyIdentificationID: text
 . var SupplierPartyIdentificationIDSchemeID: text
```

<table style="width:100%">
    <tr style="background-color:#eceff1">
        <th> Name </th>
        <th> Business Term </th>
        <th> Semantic Data Type </th>
    </tr>
    <tr>
        <td><b>Seller identifier</b></td>
        <td>BT-29</td>
        <td>Identifier</td>
    </tr>
    <tr>
        <td colspan=3>An identifier (usually assigned by the buyer) of the seller, such as the creditor number for budget management or the supplier number for the ordering system.</td>
    </tr>
    <tr>
        <td><b>Seller identifier/Scheme identifier</b></td>
        <td>BT-29-1</td>
        <td></td>
    </tr>
    <tr>
        <td colspan=3>Identifier of the scheme for the element 'Seller identifier' (BT-29).<br> Note: If the element is used, the identifier must be chosen from the entries in the list published by the ISO/IEC 6523 maintenance agency.</td>
    </tr>
</table>

#### OnAfterGetAccountingCustomerPartyPostalAddr
```al
 . SalesHeader: record "Sales Header"
 . var CustomerStreetName: text (BT-35)
 . var CustomerAdditionalStreetName: text (BT-36)
 . var CustomerCityName: text (BT-37)
 . var CustomerPostalZone: text (BT-38)
 . var CustomerCountrySubentity: text (BT-39)
 . var CustomerIdentificationCode: text (BT-40)
```

#### OnAfterGetAccountingCustomerPartyTaxSchemeBIS

```al
 . SalesHeader: record "Sales Header"
 . var CustPartyTaxSchemeCompanyID: text
 . var CustPartyTaxSchemeCompIDSchID: text
 . var CustTaxSchemeID: text
```

#### OnAfterGetAccountingCustomerPartyLegalEntityBIS

```al
 . SalesHeader: record "Sales Header"
 . var CustPartyLegalEntityRegName: text
 . var CustPartyLegalEntityCompanyID: text
 . var CustPartyLegalEntityIDSchemeID: text
```

#### OnAfterGetAccountingCustomerPartyContact

```al
 . var SalesHeader: record "Sales Header"
 . var CustContactName: text
 . var CustContactTelephone: text
 . var CustContactTelefax: text
 . var CustContactElectronicMail: text
```

#### OnAfterGetGLNDeliveryInfo

```al
 . SalesHeader: record "Sales Header"
 . var ActualDeliveryDate: text
 . var DeliveryID: text
 . var DeliveryIDSchemeID: text
```

#### OnAfterGetDeliveryAddress

```al
 . SalesHeader: record "Sales Header"
 . var DeliveryStreetName: text
 . var DeliveryAdditionalStreetName: text
 . var DeliveryCityName: text
 . var DeliveryPostalZone: text
 . var DeliveryCountrySubentity: text
 . var DeliveryCountryIdCode: text
```

#### OnAfterGetLineItemClassfiedTaxCategoryBIS

```al
 . SalesLine: record "Sales Line"
 . var ClassifiedTaxCategoryID: text
 . var ItemSchemeID: text
 . var InvoiceLineTaxPercent: Text
 . var ClassifiedTaxCategorySchemeID: text
```

#### OnAfterGetLineAllowanceChargeInfo

```al
 . SalesLine: record "Sales Line"
 . SalesHeader: record "Sales Header"
 . var InvLnAllowanceChargeIndicator: text
 . var InvLnAllowanceChargeReason: text
 . var InvLnAllowanceChargeAmount: text
 . var InvLnAllowanceChargeAmtCurrID: text
```

#### OnAterGetLineDeliveryInfo

```al
 . SalesLine: record "Sales Line"
 . SalesHeader: record "Sales Header"
 . var InvoiceLineActualDeliveryDate: text
 . var InvoiceLineDeliveryID: text
 . var InvoiceLineDeliveryIDSchemeID: text
```

#### OnAfterGetLineDeliveryPostalAddr

```al
 . SalesLine: record "Sales Line"
 . SalesHeader: record "Sales Header"
 . var InvoiceLineDeliveryStreetName: text
 . var InvLineDeliveryAddStreetName: text
 . var InvoiceLineDeliveryCityName: text
 . var InvoiceLineDeliveryPostalZone: text
 . var InvLnDeliveryCountrySubentity: text
 . var InvLnDeliveryCountryIdCode: text
 . var InvLineDeliveryCountryListID: text
```

#### OnAfterGetTaxRepresentativePartyInfo

```al
 . SalesHeader: record "Sales Header"
 . var TaxRepPartyNameName: text
 . var PayeePartyTaxSchemeCompanyID: text
 . var PayeePartyTaxSchCompIDSchemeID: text
 . var PayeePartyTaxSchemeTaxSchemeID: text
```

#### OnAfterGetAllowanceChargeInfo

```al
 . TempVATAmountLine: record "VAT Amount Line"
 . SalesHeader: record "Sales Header"
 . var ChargeIndicator: text
 . var AllowanceChargeReasonCode: text
 . var AllowanceChargeReason: text
 . var Amount: text
 . var AllowanceChargeCurrencyID: text
 . var TaxCategoryID: text
 . var TaxCategorySchemeID: text
 . var Percent: text
 . var AllowanceChargeTaxSchemeID: text
```

#### OnAfterGetTaxExemptionReason

```al
 . SalesHeader: record "Sales Header"
 . TempVATProductPostingGroup: record "VAT Product Posting Group"
 . var TaxExemptionReason: text
 . var TaxTotalTaxCategoryID: text
```

#### OnAfterGetLineAdditionalItemPropertyInfo

```al
 . SalesLine: record "Sales Line"
 . SalesHeader: record "Sales Header"
 . var AdditionalItemPropertyName: Text
 . var AdditionalItemPropertyValue: Text
```

#### OnAfterGetLinePriceAllowanceChargeInfo

```al
 . SalesHeader: record "Sales Header"
 . var PriceChargeIndicator: text
 . var PriceAllowanceChargeAmount: text
 . var PriceAllowanceAmountCurrencyID: text
 . var PriceAllowanceChargeBaseAmount: text
 . var PriceAllowChargeBaseAmtCurrID: text
```

#### OnAfterSetLinePriceAllowanceChargeInfo

```al
 . var TempLinePriceAllowanceCharge: Record "BELXRG Allowance Charge"
 . SalesHeader: Record "Sales Header"
 . SalesLine: Record "Sales Line"
```

This event is triggered after assigning the price allowance charge information for a sales line. It allows further adjustments to the allowance charge data at the line level.

#### OnAfterSetLineAllowanceChargeInfo

```al
 . var TempLineAllowanceCharge: Record "BELXRG Allowance Charge"
 . SalesHeader: Record "Sales Header"  
 . SalesLine: Record "Sales Line"
```

This event is triggered after assigning the allowance charge information for a sales line. It allows further adjustments to the allowance charge data at the line level.

#### OnAfterSetAllowanceChargeInfo

```al
 . var TempAllowanceCharge: Record "BELXRG Allowance Charge"
 . SalesHeader: Record "Sales Header"
 . VatAmtLine: Record "VAT Amount Line"
```

This event is triggered after assigning the allowance charge information at the document level. It allows further adjustments to the allowance charge data at the header level.

#### OnAfterGetCrMemoBillingReferenceInfo

```al
 . SalesCrMemoHeader: record "Sales Cr.Memo Header"
 . var InvoiceDocRefID: text
 . var InvoiceDocRefIssueDate: text
```

This event is specific to credit memos and is triggered after determining the invoice reference information. It allows adjustment of the reference ID and issue date of the original invoice.

#### OnAfterGetInvoiceGeneralInfo

```al
 . SalesInvoiceHeader: Record "Sales Invoice Header"
 . var InvoiceGeneralInfo: Record "UBL-CR Invoice - General"
```

Allows customization of general invoice information after it has been determined.

#### OnAfterGetPayeePartyInfo

```al
 . SalesInvoiceHeader: Record "Sales Invoice Header"
 . var PayeePartyInfo: Record "UBL-CR Payee Party"
```

Event for customizing payee party information.

#### OnAfterGetTaxTotalInfo

```al
 . SalesInvoiceHeader: Record "Sales Invoice Header"
 . var TaxTotalInfo: Record "UBL-CR Tax Total"
```

Allows customization of tax total information.

#### OnAfterGetCustomerPartyIdentificationID

```al
 . Customer: Record Customer
 . var CustomerPartyIdentificationID: Text
 . var schemeID: Text
```

Event for customizing customer party identification number and associated scheme identifier.

#### OnAfterGetLineAdditionalDocumentReferenceInfo

```al
 . SalesInvoiceLine: Record "Sales Invoice Line"
 . var LineAdditionalDocRefInfo: Record "UBL-CR Additional Doc Ref"
```

Allows customization of additional document references at line level.

#### OnAfterGetLineItemStandardItemIdentificationID

```al
 . SalesInvoiceLine: Record "Sales Invoice Line"
 . var StandardItemIdentificationID: Text
 . var schemeID: Text
```

Event for customizing standard item identification at line level.

#### OnAfterGetLineItemOriginCountryInfo

```al
 . SalesInvoiceLine: Record "Sales Invoice Line"
 . var OriginCountryCode: Text
```

Allows customization of origin country code for items at line level.

#### OnAfterGetInvoiceAdditionalDocumentReferenceInfo

```al
 . SalesInvoiceHeader: Record "Sales Invoice Header"
 . var AdditionalDocRefInfo: Record "UBL-CR Additional Doc Ref"
```

Event for customizing additional document references at invoice level.

#### OnAfterGetProjectReferenceInfo

```al
 . SalesInvoiceHeader: Record "Sales Invoice Header"
 . var ProjectReferenceID: Text
```

Allows customization of project reference information.

#### OnAfterGetDespatchDocumentReferenceInfo

```al
 . SalesInvoiceHeader: Record "Sales Invoice Header"
 . var DespatchDocRefInfo: Record "UBL-CR Document Reference"
```

Event for customizing despatch document references.

#### OnAfterGetReceiptDocumentReferenceInfo

```al
 . SalesInvoiceHeader: Record "Sales Invoice Header"
 . var ReceiptDocRefInfo: Record "UBL-CR Document Reference"
```


#### OnGetInvoiceLine (Invoice specific)

```al
 . SalesInvoiceLine: Record "Sales Invoice Line"
 . var skip: Boolean
```

This event is triggered for each invoice line and allows certain lines to be skipped or modified. By setting `skip` to `true`, a line can be excluded from XRechnung generation.

Allows customization of receipt document references.
#### OnGetCrMemoLine (Credit Memo Specific)

```al
 . SalesCrMemoLine: Record "Sales Cr.Memo Line"
 . var skip: Boolean
```

Specific event for credit memos that allows certain credit memo lines to be skipped or modified during processing.
``
