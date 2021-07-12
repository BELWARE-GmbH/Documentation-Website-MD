---
title: "Einrichtung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---

##### Einrichtung

Die Einrichtung für XRechnung wird in der Connector-**Einrichtung** und in der **Kommunikationsmatrix** vorgenommen. Um in die **Einrichtung** zu gelangen, gehen Sie auf **Connector 365 -\> Einrichtung** wie im folgenden Bild gezeigt.

{{<notice info>}}Sie sollten vor dem Einsatz ggf. einige Stammdaten überprüfen, damit Sie im späteren Versand nicht auf Fehler stoßen, die sich vermeiden lassen. Weitere Informationen dazu finden Sie am Ende der Dokumentation.{{</notice>}}

![](/images/connectornav/data_exchange/xrech1.png)

Die Einstellungen, die XRechnung betreffen, finden Sie im Abschnitt **Pro Mandant** unter dem Reiter **PEPPOL/XRechnung Einrichtung**

![](/images/connectornav/data_exchange/xrech2.png)  

Hier können Sie folgende Felder/Checkboxen finden:
| | |
|---|---|
| PEPPOL Ablagepfad (Optional)     | Hier können Sie einen Pfad hinterlegen, in dem PEPPOL/XRechnung betreffende Dateien (XML-Dateien, Prüfberichte) abgelegt werden sollen. Wenn dieser Pfad nicht gesetzt ist, wird der in der Einrichtung hinterlegte Pfad **com_out** zur Ablage  verwendet. |
| XRechnung Prüfung URL (Optional) | URL für Validierungsserver. Wenn nicht eingerichtet standardmäßig: **belware-validator.westeurope.cloudapp.azure.com:5090**                                                                                                                                 |
| XRechnung prüfen [Ja/Nein]       | Gibt an, ob XRechnung-Dateien durch **XRechnung Prüfung URL** validiert werden sollen.                                                                                                                                                                      |

Wie bereits in der Vorbereitung erwähnt, haben Sie die Möglichkeit unseren Validierungsserver zu nutzen. Dieser prüft, ob die erzeugt XRechnung konform zu den formalen Vorgaben ist. Falls Sie ihren eigenen Server benutzen möchten, so können Sie Ihre Server-URL in das Feld **XRechnung Prüfung URL** eintragen. Sobald dieses Feld gefüllt ist, wird der Validierungsprozess über den eingetragenen Server angesteuert. Damit die Validierung stattfinden kann, muss zusätzlich ein Häkchen in der darunterliegenden Checkbox **XRechnung prüfen** gesetzt sein. Falls Sie auf eine Validierung verzichten möchten, so können Sie die Checkbox leer lassen. (Nicht empfohlen)

Die weitere Einrichtung für XRechnung findet in der Kommunikationsmatrix statt. 

Der einfachste Weg, um in die Kommunikationsmatrix zu gelangen ist, eine der **Connector 365 Templates** für Verkauf, z.B. **Geb. Verkaufsrechnungen** oder **Geb. Verkaufsgutschriften** zu öffnen.  
Markieren Sie dann eine Rechnung für einen Kunden, für den Sie Rechnungen im XRechnung-Format verschicken möchten und klicken Sie oben in der Leiste auf **Kommunikationsmatrix.**

![](/images/connectornav/data_exchange/xrech3.png)

Dies öffnet die Kommunikationsmatrix, vorgefiltert auf den in der markierten Rechnung hinterlegten Kunden.

{{<notice info>}}Dies funktioniert nur, wenn in der Kommunikationsmatrix bereits ein Eintrag für den betreffenden Debitor angelegt wurde. Sollte kein betreffender Eintrag angelegt sein, so ist die folgende Variante anzuwenden.{{</notice>}}

Alternativ können Sie die Kommunikationsmatrix über das Menü **Connector 365** aufrufen.   
![](/images/connectornav/data_exchange/xrech4.png)

Jedoch finden Sie dann eine ungefilterte Ansicht vor, in der Sie einen Überblick über **alle** Einträge in der Matrix erhalten.  
Weite Informationen zur **Kommunikationsmatrix** finden Sie in der dazugehörigen [Dokumentation](https://belware.de/images/PDFs/Connector_NAV_Matrixdoku_17082020.pdf?type=file).

Das Modul **XRechnung** erweitert die **Kommunikationsmatrix** um folgende Spalten:  
**XRechnung**, **Leitweg-ID** und **XRechnung PDF als Anhang**.

![](/images/connectornav/data_exchange/xrech5.png)

In folgendem Beispiel wollen wir eine Rechnung für **Gilde Jupiter Versicherungs AG** im **XRechnung-**Format erstellen. Dazu tragen wir die Nummer **1306** (**Standard Sales – Invoice**) in das Feld **Berichts-ID** ein. Für den **Jobmodus** wählen wir **PDF**. Zudem setzen wir ein Häkchen in dem Feld **XRechnung** und tragen eine gültige Leitweg-ID in das Feld **Leitweg-ID** ein. In diesem Testbeispiel haben wir eine Test-Leitweg-ID **123-456-76** eingetragen.  
Die **Leitweg-ID** dient der eindeutigen Identifikation des Rechnungsempfängers (näheres finden Sie im Abschnitt: **Leitweg-ID).**   
Mittels der **Dropdown**-Liste **XRechnung PDF als Anhang** haben Sie die Möglichkeit zu bestimmen, ob neben der XRechnung noch die Rechnung als PDF-Datei ‚angehängt‘ werden soll. Die PDF-Datei kann dabei entweder per Mail als zusätzlichen Anhang behandelt werden (**Mail-Modul**), oder in die XML-Datei eingebettet werden. Weitere Informationen zu eingebetteten Anhängen finden Sie unter dem Abschnitt **Begleitende Dokumente**.  
Da es sich bei der Rechnung um eine Verkaufsrechnung handelt, wählen wir in dem Feld **PEPPOL Verwendung** den Eintrag **Verkaufsrechnung** aus der **Dropdown-Liste** aus.   
Aus der **Dropdown-Liste** des Feldes **PEPPOL Version** selektieren wir **PEPPOL BIS3.** Nun können wir aus der Rechnung eine XRechnung erzeugen.

{{<notice info>}}Wenn Sie das E-Mail-Modul des Connector 365 erworben haben, so können Sie XRechnung auch für den Jobmodus E-Mail einrichten, um erzeugte XML-Dateien direkt per Mail an den Empfänger weiterzuleiten.{{</notice>}}
