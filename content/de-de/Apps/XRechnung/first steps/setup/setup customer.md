---
title: "Debitor"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Debitor


Die Debitorspezifischen Einstellungen für das Versenden von XRechnungen werden in den **Dokumentlayouts** des jeweiligen Debitors vorgenommen.
![](images/XRechnung/XRechnungScreenshot1.png)

Wenn Sie die Dokumentlayouts öffnen stehen Ihnen nach Installation der **Connector 365 XRechnung** App folgende weitere Felder zur Verfügung:
- **Kundenreferenz**
- **Beleg als Anhang hinzufügen**
- **XRechnung Syntax**

![](images/apps/XRechnung/de/xr-doc-layout.png)

#### Kundenreferenz

In das Feld **Kundenreferenz** wird die Kennung des Empfängers, bei einem öffentlichen Auftraggerber die Leitweg-ID, eingetragen. Diese ist notwendig, um einen Rechnungsempfänger eindeutig identifizieren zu können.

{{< notice info Hinweis >}}
Die Kundenreferenz kann auch im E-Mail-Dialog gesetzt werden, das heißt sie muss nicht zwingend in den Dokumentlayouts gesetzt werden.
{{< /notice >}}

<br>

#### Beleg als Anhang hinzufügen

Im Feld **Beleg als Anhang hinzufügen** haben Sie drei Auswahlmöglichkeiten, welche bestimmen wie mit dem Originalbeleg und ggf. Anhängen umgegangen wird.

![](images/XRechnung/xrechnungbeleganhang.PNG)

**Nein** - Der Originalbeleg wird nicht zusätzlich mitversendet, es wird nur die XML der XRechnung versendet.

**Eingebettet**- Der Originalbeleg wird mitversendet, wird aber in die XML der XRechnung eingebettet. Weitere Anhänge werden ebenfalls in die XML-Eingebettet. Diese können später maschinell ausgelesen werden.

**PDF** - Der Originalbeleg wird zusätzlich zu der XML der XRechnung als PDF angehangen. Weitere Anhänge werden ebenfalls wie gewohnt angehängt.

Mehr zum Thema Anhänge finden Sie [hier](de-de/apps/xrechnung/working-with-xrechnung/attachments).

#### XRechnung Syntax

Das Feld **XRechnung Syntax** bestimmt, welcher Syntax für das Erzeugen von XRechnungen greift.
Standardmäßig wird UBL verwendet – jenes Format, 
das bislang ausschließlich in unserer Extension ***Connector 365 XRechnung*** zum Einsatz kam. 
Seit Version **2.16.*.0** kann erstmalig auch das CII-Format verwendet werden.
Mehr zum Theme ***XRechnung Syntax*** finden Sie [hier](de-de/apps/xrechnung/first-steps/setup/base-setup#xrechnung-syntax).

{{< notice info >}}
Zum aktuellen Zeitpunkt wird XRechnung-CII ausschließlich für die Belegart **Rechnung** unterstützt.
{{< /notice >}}

### E-Mail-Empfänger

Beim Versand der XRechnung, wird als E-Mail-Empfänger die Mail-Adresse aus dem Feld ***Empfänger-E-Mail*** verwendet.

|![](images/apps/XRechnung/de/xr-cust-rep-selection-sent-to.png)|
|-|

Falls dieses Feld nicht gefüllt ist, und die Option [***Debitoren-E-Mail als Rückfalloption***](de-de/apps/xrechnung/first-steps/setup/base-setup) gesetzt ist, wird alternativ die E-Mail-Adresse des Debitors verwendet.

Noch feinere Steuerungsmöglichkeiten für E-Mail-Adressen bietet unsere Extension ***Connector 365 Addressee Control***. Mehr dazu finden Sie [hier](de-de/apps/addressee-control).