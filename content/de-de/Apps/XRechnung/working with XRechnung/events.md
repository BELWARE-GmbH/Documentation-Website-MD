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

- InvoicePeriodStartDate : Text
- InvoicePeriodEndDate : Text

Das Event **OnGetInvoicePeriod** kann genutzt werden, um das Leistungsdatum bzw. ein Leistungszeitraum für eine Rechnung festzulegen. Dabei wird ein Zeitraum durch einen Start- und einen Endzeitpunkt definiert, die jeweils folgendes Format erhalten sollen: „YYYY-MM-DD“. Beispiel: 2017-10-01

#### OnAfterGetLineInvoicePeriodInfo

- SalesLine : Record „Sales Line“
- VAR InvLineInvoicePeriodStartDate : Text
- VAR InvLineInvoicePeriodEndDate : Text

Dieses Event setzt das Leistungsdatum ähnlich wie bei OnGetInvoicePeriod fest, jedoch auf Zeilenebene.

#### OnAfterGetAccountingSupplierPartyContact (BG-6)

- SalesHeader : Record “Sales Header”
- VAR ContactName : Text  (BT-41)
- VAR Telephone : Text  (BT-42)
- VAR Telefax : Text
- VAR ElectronicMail : Text  (BT-43)

Business Rules:

BR-DE-2: Die Gruppe „SELLER CONTACT“ (BG-6) ist zwingend zu übermitteln.

BR-DE-5: Das Element „SELLER CONTACT POINT“ (BT-41) ist zwingend zu übermitteln.

BR-DE-6: Das Element „SELLER CONTACT TELEPHONE NUMBER“ (BT-42) ist zwingend zu übermitteln.
 
BR-DE-7: Das Element „SELLER CONTACT EMAIL ADDRESS“ (BT-43) ist zwingend zu übermitteln.

#### OnAfterGetPaymentTermsInfo

- SalesHeader : Record „Sales Header“
- VAR PaymentTermsNote : Text (BT-20)

**_Eine Textbeschreibung der Zahlungsbedingungen, die für den fälligen Zahlungsbetrag gelten (einschließlich Beschreibung möglicher Skonto- und Verzugsbedingungen.) Dieses Informationselement kann mehrere Zeilen und mehrere Angaben zu Zahlungsbedingungen beinhalten und sowohl unstrukturierten als strukturierten Text enthalten. Der unstrukturierte Text darf dabei keine # enthalten._**

Spezifikation XRechnung Standard und Extension 
Version XRechnung 2.0.0 | Fassung vom 16.12.2020

#### OnGetOrderLineReference

- SalesLine : Record „Sales Line“
- VAR OrderLineReferenceLineID : Text BT-132

**Referenced purchase oder line reference**

**_Eine vom Erwerber ausgegebene Kennung für eine referenzierte Position einer Bestellung / eines Auftrags._**

**_Anmerkung: Auf den Auftrag wird auf Rechnungsebene Bezug genommen._**

Spezifikation XRechnung Standard und Extension 
Version XRechnung 2.0.0 | Fassung vom 16.12.2020

#### OnAfterGetPaymentMeansInfo (BG-16)

- Sales Header : Record „Sales Header“
- VAR PaymentMeansCode : Text  BT-81
- VAR PaymentChannelCode : Text  BT-82
- VAR PaymentID : Text  BT-83
- VAR PrimaryAccountNumberID : Text  BT-87
- VAR NetworkID : Text

Business Rules:

BR-DE-1:	Eine Rechnung (INVOICE) muss Angaben zu „PAYMENT INSTRUCTIONS“ (BG-16) enthalten.

BR-DE-13:	In der Rechnung müssen Angaben zu einer der drei Gruppen „CREDIT TRANSFER“ (BG-17), „PAYMENT CARD INFORMATION“ (BG-18) oder „DIRECT DEBIT“ (BG-19) gemacht werden.

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


