---
title: "Events"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 4
---
### Arbeiten mit XRechnung

### Events
Wir bieten Ihnen die Möglichkeit sich mit Events in unsere Programmierlogik einzuklinken, hier beschreiben wir Ihnen wie dies geht.

Um ein Event für Verkaufsrechnungen bzw. Servicerechnungen zu subscriben, muss der XML-Port **BEL365 S. Inv. XRechnung 2.0** in einem **EventSubscriber** angegeben werden.

**Beispiel:**
![](images/apps/Eventdoku1.PNG)

Für Verkaufsgutschriften bzw. Servicegutschriften ist als folgender XML-Port einzutragen: **BEL365 S. Cr. M. XRechnung 2.0.**

**Beispiel:**
![](images/apps/eventdoku2.PNG)

Die XRechnung-Events bieten die Möglichkeit, Business Terms zu „füllen“ nachdem Sie standardmäßig gesetzt werden und noch bevor Sie weiterverarbeitet, also in die resultierende XML-Datei eingefügt werden. Die Business Terms werden dabei jeweils als **Text**-Variable übergeben. Vorangestellt an diesen Variablen steht das Schlüsselwort **VAR**, welches angibt, dass die Variablen Referenzen auf die ursprünglichen Variablen sind.

Nachdem Sie eine Funktion als Subscriber definiert haben, so können Sie die übergebenen Variablen beliebig und nach eigener Logik füllen.

**Beispiel***
![](images/apps/eventdoku3.PNG)

Die Funktion **SubAfterGetLineInvoicePeriod** ist hier ein Subscriber für das Event **OnAfterGetLineInvoicePeriodInfo**.

Unabhängig von der Standardmäßigen Logik der Füllung der Variablen, enthält **InvLineInvoicePeriodEndDate** nach Erzeugung der XRechnung nun den Wert **„2021-04-15“** und erscheint so in der resultierenden XML-Datei. Gleiche Vorgehensweise gilt für alle weiteren Events.

Im Folgenden eine Auflistung der verfügbaren Events und die damit zu verändernden Variablen.

{{< notice info "Hinweis" >}}
 Zu Beginn des XML-Ports wird überprüft, ob es sich um einen Verkaufsbeleg bzw. um einen Servicebeleg handelt. Anschließend werden die zugehörigen Record-Variablen in die Variablen „Sales Header“ und „Sales Line“ transferiert, welche von dort an über den gesamten XML-Port verwendet werden. Beispiel für Verkaufsrechnungen: 

„Sales Invoice Header“ -> „Sales Header“,
„Sales Invoice Line“ -> „Sales Line“.

Dies ist der Grund, weshalb alle folgenden Events mit „Sales Header“ oder mit „Sales Line“ arbeiten.
{{< /notice >}}
#

#### OnGetInvoicePeriod
```al
- VAR InvoicePeriodStartDate : Text
- VAR InvoicePeriodEndDate : Text
```

Das Event **OnGetInvoicePeriod** kann genutzt werden, um das Leistungsdatum bzw. ein Leistungszeitraum für eine Rechnung festzulegen. Dabei wird ein Zeitraum durch einen Start- und einen Endzeitpunkt definiert, die jeweils folgendes Format erhalten sollen: „YYYY-MM-DD“. Beispiel: 2017-10-01

#### OnAfterGetLineInvoicePeriodInfo

```al
- SalesLine : Record „Sales Line“
- VAR InvLineInvoicePeriodStartDate : Text
- VAR InvLineInvoicePeriodEndDate : Text
```

Dieses Event setzt das Leistungsdatum ähnlich wie bei OnGetInvoicePeriod fest, jedoch auf Zeilenebene.

#### OnAfterGetAccountingSupplierPartyContact (BG-6)

```al
- SalesHeader : Record “Sales Header”
- VAR ContactName : Text  (BT-41)
- VAR Telephone : Text  (BT-42)
- VAR Telefax : Text
- VAR ElectronicMail : Text  (BT-43)
```

Business Rules:

BR-DE-2: Die Gruppe „SELLER CONTACT“ (BG-6) ist zwingend zu übermitteln.

BR-DE-5: Das Element „SELLER CONTACT POINT“ (BT-41) ist zwingend zu übermitteln.

BR-DE-6: Das Element „SELLER CONTACT TELEPHONE NUMBER“ (BT-42) ist zwingend zu übermitteln.
 
BR-DE-7: Das Element „SELLER CONTACT EMAIL ADDRESS“ (BT-43) ist zwingend zu übermitteln.

#### OnAfterGetPaymentTermsInfo

```al
- SalesHeader : Record „Sales Header“
- VAR PaymentTermsNote : Text (BT-20)
```

**_Eine Textbeschreibung der Zahlungsbedingungen, die für den fälligen Zahlungsbetrag gelten (einschließlich Beschreibung möglicher Skonto- und Verzugsbedingungen.) Dieses Informationselement kann mehrere Zeilen und mehrere Angaben zu Zahlungsbedingungen beinhalten und sowohl unstrukturierten als strukturierten Text enthalten. Der unstrukturierte Text darf dabei keine # enthalten._**

Spezifikation XRechnung Standard und Extension 
Version XRechnung 2.0.0 | Fassung vom 16.12.2020

#### OnGetOrderLineReference

```al
- SalesLine : Record „Sales Line“
- VAR OrderLineReferenceLineID : Text (BT-132)
```

**Referenced purchase oder line reference**

**_Eine vom Erwerber ausgegebene Kennung für eine referenzierte Position einer Bestellung / eines Auftrags._**

**_Anmerkung: Auf den Auftrag wird auf Rechnungsebene Bezug genommen._**

Spezifikation XRechnung Standard und Extension 
Version XRechnung 2.0.0 | Fassung vom 16.12.2020

#### OnAfterGetPaymentMeansInfo (BG-16)

```al
- Sales Header : Record „Sales Header“
- VAR PaymentMeansCode : Text  (BT-81)
- VAR PaymentChannelCode : Text  (BT-82)
- VAR PaymentID : Text  (BT-83)
- VAR PrimaryAccountNumberID : Text  (BT-87)
- VAR NetworkID : Text
```

Business Rules:

BR-DE-1:	Eine Rechnung (INVOICE) muss Angaben zu „PAYMENT INSTRUCTIONS“ (BG-16) enthalten.

BR-DE-13:	In der Rechnung müssen Angaben zu einer der drei Gruppen „CREDIT TRANSFER“ (BG-17), „PAYMENT CARD INFORMATION“ (BG-18) oder „DIRECT DEBIT“ (BG-19) gemacht werden.

#### OnAfterGetContractDocRefInfo

```al
- SalesHeader : Record „Sales Header“
- VAR ContractDocumentReferenceID : Text
- VAR DocumentTypeCode : Text
- VAR ContractRefDocTypeCodeListID : Text
- VAR DocumentType : Text
```

#### OnAfterGetAccountingCustomerPartyInfoBIS

```al
- SalesHeader : Record „Sales Header“
- VAR ContractDocumentReferenceID : Text
- VAR DocumentTypeCode : Text
- VAR ContractRefDocTypeCodeListID : Text
- VAR DocumentType : Text
```

#### OnAfterGetPaymentMeansPayeeFinancialAccBIS (BG-17)

```al
- VAR PayeeFinancialAccountID : Text (BT-84)
- VAR FinancialInstitutionBranchID : Text (BT-85)
- VAR PayeeFinancialAccountName : Text
```

#### OnAfterGetLineGeneralInfo

```al
- SalesLine : Record „Sales Line“
- SalesHeader : Record „Sales Header“
- VAR InvoiceLineID : Text
- VAR InvoiceLineNote : Text
- VAR InvoicedQuantity : Text
- VAR InvoiceLineExtensionAmount : Text
- VAR LineExtensionAmountCurrencyID : Text
- VAR InvoiceLineAccountingCost : Text
```

### OnAfterGetLineItemInfo

```al
 - SalesLine: Record "Sales Line"
 - VAR Description: Text
 - VAR Name: Text
 - VAR SellersItemIdentificationID: Text
 - VAR StandardItemIdentificationID: Text
 - VAR StdItemIdIDSchemeID: Text
 - VAR OriginCountryIdCode: Text
 - VAR OriginCountryIdCodeListID: Text
```

### OnAfterGetAccountingSupplierPartyLegalEntityBIS
```al
 - SalesHeader: record "Sales Header"
 - var PartyLegalEntityRegName: Text
 - var PartyLegalEntityCompanyID: Text
 - var PartyLegalEntitySchemeID: Text
 - var SupplierRegAddrCityName: Text
 - var SupplierRegAddrCountryIdCode: Text
 - var SupplRegAddrCountryIdListId: Text
```

### OnAfterGetAccountingSupplierPartyTaxSchemeBIS

```al
 - SalesHeader: record "Sales Header"
 - var TempVATAmountLine: record "VAT Amount Line"
 - var CompanyID: text
 - var CompanyIDSchemeID: text
 - var TaxSchemeID: text
```

### OnAfterGetAccountingSupplierPartyPostalAddr

```al
 - SalesHeader: record "Sales Header"
 - var StreetName: text
 - var SupplierAdditionalStreetName: text
 - var CityName: text
 - var PostalZone: text
 - var CountrySubentity: text
 - var IdentificationCoder: text
```

### OnAfterGetAccountingSupplierPartyInfoBIS(

```al
 - SalesHeader: record "Sales Header"
 - var SupplierEndpointID: text
 - var SupplierSchemeID: text
 - var SupplierName: text
```

### OnAfterGetAccountingCustomerPartyPostalAddr

```al
 - SalesHeader: record "Sales Header"
 - var CustomerStreetName: text
 - var CustomerAdditionalStreetName: text
 - var CustomerCityName: text
 - var CustomerPostalZone: text
 - var CustomerCountrySubentity: text
 - var CustomerIdentificationCode: text
```

### OnAfterGetAccountingCustomerPartyTaxSchemeBIS(

```al
 - SalesHeader: record "Sales Header"
 - var CustPartyTaxSchemeCompanyID: text
 - var CustPartyTaxSchemeCompIDSchID: text
 - var CustTaxSchemeID: text
```

### OnAfterGetAccountingCustomerPartyLegalEntityBIS

```al
 - SalesHeader: record "Sales Header"
 - var CustPartyLegalEntityRegName: text
 - var CustPartyLegalEntityCompanyID: text
 - var CustPartyLegalEntityIDSchemeID: text
```

### OnAfterGetAccountingCustomerPartyContact

```al
 - var SalesHeader: record "Sales Header"
 - var CustContactName: text
 - var CustContactTelephone: text
 - var CustContactTelefax: text
 - var CustContactElectronicMail: text
```

### OnAfterGetGLNDeliveryInfo

```al
 - SalesHeader: record "Sales Header"
 - var ActualDeliveryDate: text
 - var DeliveryID: text
 - var DeliveryIDSchemeID: text
```

### OnAfterGetDeliveryAddress

```al
 - SalesHeader: record "Sales Header"
 - var DeliveryStreetName: text
 - var DeliveryAdditionalStreetName: text
 - var DeliveryCityName: text
 - var DeliveryPostalZone: text
 - var DeliveryCountrySubentity: text
 - var DeliveryCountryIdCode: text
```

### OnAfterGetLineItemClassfiedTaxCategoryBIS

```al
 - SalesLine: record "Sales Line"
 - var ClassifiedTaxCategoryID: text
 - var ItemSchemeID: text
 - var InvoiceLineTaxPercent: Text
 - var ClassifiedTaxCategorySchemeID: text
```

### OnAfterGetLineAllowanceChargeInfo
```al
 - SalesLine: record "Sales Line"
 - SalesHeader: record "Sales Header"
 - var InvLnAllowanceChargeIndicator: text
 - var InvLnAllowanceChargeReason: text
 - var InvLnAllowanceChargeAmount: text
 - var InvLnAllowanceChargeAmtCurrID: text
```

 ### OnAterGetLineDeliveryInfo

```al
 - SalesLine: record "Sales Line"
 - SalesHeader: record "Sales Header"
 - var InvoiceLineActualDeliveryDate: text
 - var InvoiceLineDeliveryID: text
 - var InvoiceLineDeliveryIDSchemeID: text
```

### OnAfterGetLineDeliveryPostalAddr

```al
 - SalesLine: record "Sales Line"
 - SalesHeader: record "Sales Header"
 - var InvoiceLineDeliveryStreetName: text
 - var InvLineDeliveryAddStreetName: text
 - var InvoiceLineDeliveryCityName: text
 - var InvoiceLineDeliveryPostalZone: text
 - var InvLnDeliveryCountrySubentity: text
 - var InvLnDeliveryCountryIdCode: text
 - var InvLineDeliveryCountryListID: text
```

### OnAfterGetTaxRepresentativePartyInfo

```al
 - SalesHeader: record "Sales Header"
 - var TaxRepPartyNameName: text
 - var PayeePartyTaxSchemeCompanyID: text
 - var PayeePartyTaxSchCompIDSchemeID: text
 - var PayeePartyTaxSchemeTaxSchemeID: text
```

### OnAfterGetAllowanceChargeInfo

```al
 - TempVATAmountLine: record "VAT Amount Line"
 - SalesHeader: record "Sales Header"
 - var ChargeIndicator: text
 - var AllowanceChargeReasonCode: text
 - var AllowanceChargeReason: text
 - var Amount: text
 - var AllowanceChargeCurrencyID: text
 - var TaxCategoryID: text
 - var TaxCategorySchemeID: text
 - var Percent: text
 - var AllowanceChargeTaxSchemeID: text
```

### OnAfterGetTaxExemptionReason

```al
 - SalesHeader: record "Sales Header"
 - TempVATProductPostingGroup: record "VAT Product Posting Group"
 - var TaxExemptionReason: text
 - var TaxTotalTaxCategoryID: text
```

### OnAfterGetLineAdditionalItemPropertyInfo

```al
 - SalesLine: record "Sales Line"
 - SalesHeader: record "Sales Header"
 - var AdditionalItemPropertyName: Text
 - var AdditionalItemPropertyValue: Text
```

### OnAfterGetLinePriceAllowanceChargeInfo

```al
 - SalesHeader: record "Sales Header"
 - var PriceChargeIndicator: text
 - var PriceAllowanceChargeAmount: text
 - var PriceAllowanceAmountCurrencyID: text
 - var PriceAllowanceChargeBaseAmount: text
 - var PriceAllowChargeBaseAmtCurrID: text
```