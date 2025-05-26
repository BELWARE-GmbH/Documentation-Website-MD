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
```al
[EventSubscriber(ObjectType::XmlPort, XmlPort::"BEL365 S. Inv. XRechnung 2.0", 'OnAfterGetLineInvoicePeriodInfo', "", true, true)]
```

Für Verkaufsgutschriften bzw. Servicegutschriften ist als folgender XML-Port einzutragen: **BEL365 S. Cr. M. XRechnung 2.0.**

**Beispiel:**
```al
[EventSubscriber(ObjectType::XmlPort, XmlPort::"BEL365 S. Cr. M. XRechnung 2.0", 'OnAfterGetLineInvoicePeriodInfo', "", true, true)]
```

{{< notice info Hinweis>}}
Einige der Business Terms, welche im folgenden aufgelistet werden, können **nicht** über die beiden oben genannten XML-Ports verändert werden.
**Connector 365 XRechnung** bedient sich teilweise aus Funktionen der Microsoft Standard-**Codeunit: PEPPOL Management (1605)**.
Die betroffenden Events werden in dieser Dokumentation mit einer Hinweis-Box versehen.
{{< /notice >}}
<br>
Die XRechnung-Events bieten die Möglichkeit, Business Terms zu „füllen“ nachdem Sie standardmäßig gesetzt werden und noch bevor Sie weiterverarbeitet, also in die resultierende XML-Datei eingefügt werden. Die Business Terms werden dabei jeweils als **Text**-Variable übergeben. Vorangestellt an diesen Variablen steht das Schlüsselwort **VAR**, welches angibt, dass die Variablen Referenzen auf die ursprünglichen Variablen sind.

Nachdem Sie eine Funktion als Subscriber definiert haben, so können Sie die übergebenen Variablen beliebig und nach eigener Logik füllen.

**Beispiel**
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

### GetGeneralInfoBIS

{{< notice info >}}
Dieses Event stammt aus der **Codeunit: PEPPOL Management (1605)**.
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
        <th> Semantischer Datentyp </th>
    </tr>
    <tr>
        <td><b>Invoice number</b></td>
        <td>BT-1</td>
        <td>Identifier</td>
    </tr>
    <tr>
        <td colspan=3>Eine eindeutige Kennung der Rechnung, die diese im System des Verkäufers identifiziert.</td>
    </tr>
    <tr>
        <td><b>Invoice issue date</b></td>
        <td>BT-2</td>
        <td>Date</td>
    </tr>
    <tr>
        <td colspan=3>Das Datum, an dem die Rechnung ausgestellt wurde.</td>
    <tr>
        <td><b>Invoice type code</b></td>
        <td>BT-3</td>
        <td>Code</td>
    </tr>
    <tr>
        <td colspan=3>Ein Code, der den Funktionstyp der Rechnung angibt.
                      Anmerkung: Der Rechnungstyp muss gemäß <a href= "https://www.xrepository.de/details/urn:xoev-de:kosit:codeliste:untdid.1001_2">UNTDID 1001</a> spezifiert werden.</td>
    <tr>
        <td><b>Invoice currency code</b></td>
        <td>BT-5</td>
        <td>Code</td>
    </tr>
    <tr>
        <td colspan=3>Die Währung, in der alle Rechnungsbeträge angegeben werden, ausgenommen ist der Umsatzsteuer-Gesamtbetrag, der in der Abrechnungswährung anzugeben ist.</td>
    </tr>
    <tr>
        <td><b>Value added tax point date</b></td>
        <td>BT-7</td>
        <td>Date</td>
    </tr>
    <tr>
        <td colspan=3>Das Datum, zu dem die Umsatzsteuer für den Verkäufer und für den Erwerber abrechnungsrelevant wird. Die Anwednung von BT-7 und 8 schließen sich gegenseitig aus.</td>
    <tr>
    <tr>
        <td><b>Buyer accounting reference</b></td>
        <td>BT-19</td>
        <td>Text</td>
    </tr>
    <tr>
        <td colspan=3>Ein Textwert, der angibt, an welcher Stelle die betreffenden Daten in den Finanzkosten des Erwerbers zu buchen sind.</td>
    <t/r>
    <tr>
        <td><b>Invoice note</b></td>
        <td>BT-22</td>
        <td>Text</td>
    </tr>
    <tr>
        <td colspan=3>Ein Textvermerk, der unstrukturierte Informationen enthält, die für die Rechnung als Ganzes maßgeblich sind.</td>
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
        <th> Semantischer Datentyp </th>
    </tr>
    <tr>
        <td><b>Invoicing period start date</b></td>
        <td>BT-73</td>
        <td>Date</td>
    </tr>
    <tr>
        <td colspan=3>Das Datum, an dem der Abrechnungszeitraum beginnt.</td>
    </tr>
    <tr>
        <td><b>Invoicing period end date</b></td>
        <td>BT-74</td>
        <td>Date</td>
    </tr>
    <tr>
        <td colspan=3>Das Datum, an dem der Abrechnungszeitraum endet.
</table>

Das Event **OnGetInvoicePeriod** kann genutzt werden, um das Leistungsdatum bzw. ein Leistungszeitraum für eine Rechnung festzulegen. Dabei wird ein Zeitraum durch einen Start- und einen Endzeitpunkt definiert, die jeweils folgendes Format erhalten sollen: „YYYY-MM-DD“. Beispiel: 2017-10-01

#### OnAfterGetLineInvoicePeriodInfo

```al
. SalesLine : Record „Sales Line“
. VAR InvLineInvoicePeriodStartDate : Text 
. VAR InvLineInvoicePeriodEndDate : Text
```

Dieses Event setzt das Leistungsdatum ähnlich wie bei OnGetInvoicePeriod fest, jedoch auf Zeilenebene.

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
        <th> Semantischer Datentyp </th>
    </tr>
    <tr>
        <td><b>Seller Contact Point</b></td>
        <td>BT-41</td>
        <td>Text</td>
    </tr>
    <tr>
        <td colspan=3>Angaben zu Ansprechpartner oder Kontaktstelle (wie z.B. Name einer Person, Abteilungs- oder Bürobezeichnung</td>
    </tr>
    <tr>
        <td><b>Seller contact telephone number</b></td>
        <td>BT-42</td>
        <td>Text</td>
    </tr>
    <tr>
        <td colspan=3>Telefonnummer des Ansprechpartners oder der Kontaktstelle</td>
    <tr>
        <td><b>Seller contact email address</b></td>
        <td>BT-43</td>
        <td>Text</td>
    </tr>
    <tr>
        <td colspan=3>Eine E-Mail-Adresse des Ansprechpartners oder der Kontaktstelle</td>

</table>


Business Rules:

BR-DE-2: Die Gruppe „SELLER CONTACT“ (BG-6) ist zwingend zu übermitteln.

BR-DE-5: Das Element „SELLER CONTACT POINT“ (BT-41) ist zwingend zu übermitteln.

BR-DE-6: Das Element „SELLER CONTACT TELEPHONE NUMBER“ (BT-42) ist zwingend zu übermitteln.
 
BR-DE-7: Das Element „SELLER CONTACT EMAIL ADDRESS“ (BT-43) ist zwingend zu übermitteln.

#### OnAfterGetPaymentTermsInfo

```al
. SalesHeader : Record „Sales Header“
. VAR PaymentTermsNote : Text (BT-20)
```

**_Eine Textbeschreibung der Zahlungsbedingungen, die für den fälligen Zahlungsbetrag gelten (einschließlich Beschreibung möglicher Skonto- und Verzugsbedingungen.) Dieses Informationselement kann mehrere Zeilen und mehrere Angaben zu Zahlungsbedingungen beinhalten und sowohl unstrukturierten als strukturierten Text enthalten. Der unstrukturierte Text darf dabei keine # enthalten._**

Spezifikation XRechnung Standard und Extension 
Version XRechnung 2.0.0 | Fassung vom 16.12.2020

#### OnGetOrderLineReference

```al
. SalesLine : Record „Sales Line“
. VAR OrderLineReferenceLineID : Text (BT-132)
```

**Referenced purchase oder line reference**

**_Eine vom Erwerber ausgegebene Kennung für eine referenzierte Position einer Bestellung / eines Auftrags._**

**_Anmerkung: Auf den Auftrag wird auf Rechnungsebene Bezug genommen._**

Spezifikation XRechnung Standard und Extension 
Version XRechnung 2.0.0 | Fassung vom 16.12.2020

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
        <th> Semantischer Datentyp </th>
    </tr>
    <tr>
        <td><b>Payment means type code</b></td>
        <td>BT-81</td>
        <td>Code</td>
    </tr>
    <tr>
        <td colspan=3>Das als Code ausgedrückte erwartete oder genutzte Zahlungsmittel. Hierzu wird auf die Codeliste UN/ECE 4461 verwiesen</td>
    </tr>
    <tr>
        <td><b>Payment means text</b></td>
        <td>BT-82</td>
        <td>Text</td>
    </tr>
    <tr>
        <td colspan=3>Das in Textform ausgedrückte erwartete oder genutzte Zahlungsmittel</td>
    <tr>
        <td><b>Remittance information</b></td>
        <td>BT-83</td>
        <td>Text</td>
    </tr>
    <tr>
        <td colspan=3>Ein Textwert, der zur Verknüpfung der Zahlung mit der vom Verkäufer ausgestellten Rechnung verwendet wird</td>
    <tr>
        <td><b>Payment card primary account number</b></td>
        <td>BT-87</td>
        <td>Text</td>
    </tr>
    <tr>
        <td colspan=3>Die Nummer der Kreditkarte, die für die Zahlung genutzt wurde</td>
</table>


Business Rules:

BR-DE-1:	Eine Rechnung (INVOICE) muss Angaben zu „PAYMENT INSTRUCTIONS“ (BG-16) enthalten.

BR-DE-13:	In der Rechnung müssen Angaben zu einer der drei Gruppen „CREDIT TRANSFER“ (BG-17), „PAYMENT CARD INFORMATION“ (BG-18) oder „DIRECT DEBIT“ (BG-19) gemacht werden.

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
        <th> Semantischer Datentyp </th>
    </tr>
    <tr>
        <td><b>Contract reference</b></td>
        <td>BT-12</td>
        <td>Document Reference</td>
    </tr>
    <tr>
        <td colspan=3>Eine eindeutige Bezeichnung des Vertrages (z.B: Vertragsnummer).</td>
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
        <th> Semantischer Datentyp </th>
    </tr>
    <tr>
        <td><b>Buyer electronic address</b></td>
        <td>BT-49</td>
        <td>Identifier</td>
    </tr>
    <tr>
        <td colspan=3>Gibt eine elektronische Adresse des Erwerbers an, an die eine Rechnung gesendet werden sollte.</td>
    </tr>
    <tr>
        <td colspan=3><b>Buyer electronic address/Scheme identifier</b></td>
    <tr>
        <td colspan=3>Das Bildungsmuster für Buyer electronic address. <br><br> Es ist die Codeliste Electronic Address Scheme code list (EAS) zu verwenden.
                      Die Codeliste wird von der Connecing Europe Facility gepflegt und herausgegeben.</td>
    </tr>
    <tr>
        <td><b>Buyer identifier</b></td>
        <td>BT-46</td>
        <td>Identifier</td>
    </tr>
    <tr>
        <td colspan=3>Eine (i.d.R. vom Verkäufer vergebene) Kennung des Erwerbers, wie z.b. die Debitorennummer für die Buchhaltung oder die Kundennummer für die Auftragsverwaltung.<br><br>
        Anmerkung: Für die Bildung des Buyer Identifier ist kein einheitliches Schema erforderlich</td>
    </tr>
    <tr>
        <td colspan=3><b>Die Kennungs des Bildungsschemas für den "Buyer identifier".</b>
    </tr>
    <tr>
        <td colspan=3><br>Anmerkung: Wenn das Element verwendet wird, ist der Eintrag aus der von der ISO/IEC 6523 maintenance agency veröffentlichten Liste zu wählen.
        </td>
    </tr>
    <tr>
        <td><b>Buyer trading name</b></td>
        <td>BT-45</td>
        <td>Text</td>
    </tr>
    <tr>
        <td colspan=3>Ein Name, unter dem der Erwerber bekannt ist, sofern abweichend vom Namen des Erwerbers.</td>
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
        <th> Semantischer Datentyp </th>
    </tr>
    <tr>
        <td><b>Payment account identifier</b></td>
        <td>BT-84</td>
        <td>Identifier</td>
    </tr>
    <tr>
        <td colspan=3>Die Kennung des Kontos, auf das die Zahlung erfolgen soll: IBAN für Zahlungen im SEPA-Raum, Kontonummer oder IBAN im Fall von Auslandszahlungen</td>
    </tr>
    <tr>
        <td><b>Payment account name</b></td>
        <td>BT-85</td>
        <td>Text</td>
    </tr>
    <tr>
        <td colspan=3>Name des Kontos bei einem Zahlungsdienstleister, auf das die Zahlunge erfolgeng soll. (z.B. Kontoinhaber) </td>
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
        <th> Semantischer Datentyp </th>
    </tr>
    <tr>
        <td><b>Seller electronic address</b></td>
        <td>BT-34</td>
        <td>Identifier</td>
    </tr>
    <tr>
        <td colspan=3>Gibt die elektronische Adresse des Verkäufers an, an die die Antwort der Anwendungsebene auf eine Rechnung gesendet werden kann.</td>
    </tr>
    <tr>
        <td><b>Seller trading name</b></td>
        <td>BT-28</td>
        <td>Text</td>
    </tr>
    <tr>
        <td colspan=3>Ein Name, unter dem der Verkäufer bekannst ist, sofern abweichend vom Namen des Verkäufers.</td>
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