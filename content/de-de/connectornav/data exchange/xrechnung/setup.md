---
title: "Einrichtung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---

# Einrichtung

Die Einrichtung für XRechnung wird in der Connector-**Einrichtung** und in der **Kommunikationsmatrix** vorgenommen. Um in die **Einrichtung** zu gelangen, gehen Sie auf **Connector 365 -\> Einrichtung** wie im folgenden Bild gezeigt.

{{<notice info>}}Sie sollten vor dem Einsatz ggf. einige Stammdaten überprüfen, damit Sie im späteren Versand nicht auf Fehler stoßen, die sich vermeiden lassen. Weitere Informationen dazu finden Sie am Ende der Dokumentation.{{</notice>}}

|![](/images/connectornav/data_exchange/xrech1.png)|
|-|

Die Einstellungen, die XRechnung betreffen, finden Sie im Abschnitt **Pro Mandant** unter dem Reiter **PEPPOL/XRechnung Einrichtung**

|![](/images/connectornav/data_exchange/xrech2.png)|
|-|

Hier können Sie folgende Felder/Checkboxen finden:
| Feld | Beschreibung |
|-|-|
| PEPPOL Ablagepfad | Hier können Sie einen Pfad hinterlegen, in dem PEPPOL/XRechnung betreffende Dateien (XML-Dateien, Prüfberichte) abgelegt werden sollen. Wenn dieser Pfad nicht gesetzt ist, wird einzig der in der Einrichtung hinterlegte Pfad **com_out** zur Ablage  verwendet. |
| XRechnung Prüfung URL | Gibt die URL für einen Validierungsdienst an, der die Korrektheit einer erstellten PEPPOL- bzw. XRechnung-Datei prüft. Dieses Feld wird nur benötigt, wenn ein [eigener Validierungsdienst](de-de/connectornav/data-exchange/xrechnung/setup_validator/) genutzt werden soll. |
| XRechnung prüfen | Gibt an, ob PEPPOL- bzw. XRechnung-Dateien durch einen Validierungsdienst geprüft werden sollen. Wenn **XRechnung Prüfung URL** gesetzt ist, wird die zu prüfende Datei an die hinterlegte URL zwecks Validierung gesendet. |
| EN16931 prüfen | Gibt an, dass erzeugte XML-Dateien auf Konformität zu EN-16931 geprüft werden sollen. |
| Leitweg-Id prüfen | Gibt an, ob eingegebene Leitweg-Ids auf syntaktische Korrektheit geprüft werden sollen. |
| XRechnung-Version | Gibt die XRechnung-Version an, die momentan verwendet wird. Mehr zur XRechnung-Version finden Sie [hier](de-de/connectornav/data-exchange/xrechnung/setup#xrechnung-version). |
| Kennung Standard XRechnung | Gibt die verwendete Kennung für die momentan verwendete XRechnung-Version an. Mehr zur XRechnung-Version finden Sie [hier](de-de/connectornav/data-exchange/xrechnung/setup#xrechnung-version). |

Wie bereits in der Vorbereitung erwähnt, haben Sie die Möglichkeit unseren Validierungsserver zu nutzen. Dieser prüft, ob die erzeugt XRechnung konform zu den formalen Vorgaben ist. Falls Sie ihren eigenen Server benutzen möchten, so können Sie Ihre Server-URL in das Feld **XRechnung Prüfung URL** eintragen. Sobald dieses Feld gefüllt ist, wird der Validierungsprozess über den eingetragenen Server angesteuert. Damit die Validierung stattfinden kann, muss zusätzlich ein Häkchen in der darunterliegenden Checkbox **XRechnung prüfen** gesetzt sein. Falls Sie auf eine Validierung verzichten möchten, so können Sie die Checkbox leer lassen. (Nicht empfohlen)

Die weitere Einrichtung für XRechnung findet in der Kommunikationsmatrix statt. 

Der einfachste Weg, um in die Kommunikationsmatrix zu gelangen ist, eine der **Connector 365 Templates** für Verkauf, z.B. **Geb. Verkaufsrechnungen** oder **Geb. Verkaufsgutschriften** zu öffnen.  
Markieren Sie dann eine Rechnung für einen Kunden, für den Sie Rechnungen im XRechnung-Format verschicken möchten und klicken Sie oben in der Leiste auf **Kommunikationsmatrix.**

|![](/images/connectornav/data_exchange/xrech3.png)|
|-|

Dies öffnet die Kommunikationsmatrix, vorgefiltert auf den in der markierten Rechnung hinterlegten Kunden.

{{<notice info>}}Dies funktioniert nur, wenn in der Kommunikationsmatrix bereits ein Eintrag für den betreffenden Debitor angelegt wurde. Sollte kein betreffender Eintrag angelegt sein, so ist die folgende Variante anzuwenden.{{</notice>}}

Alternativ können Sie die Kommunikationsmatrix über das Menü **Connector 365** aufrufen.   
|![](/images/connectornav/data_exchange/xrech4.png)|
|-|

Jedoch finden Sie dann eine ungefilterte Ansicht vor, in der Sie einen Überblick über **alle** Einträge in der Matrix erhalten.  
Weite Informationen zur **Kommunikationsmatrix** finden Sie in der dazugehörigen [Dokumentation](de-de/connectornav/matrix).

Das Modul **XRechnung** erweitert die **Kommunikationsmatrix** um folgende Spalten:  
**XRechnung**, **Leitweg-ID** und **XRechnung PDF als Anhang**.

|![](/images/connectornav/data_exchange/xrech5.png)|
|-|

In folgendem Beispiel wollen wir eine Rechnung für **Gilde Jupiter Versicherungs AG** im **XRechnung-**Format erstellen. Dazu tragen wir die Nummer **1306** (**Standard Sales – Invoice**) in das Feld **Berichts-ID** ein. Für den **Jobmodus** wählen wir **PDF**. Zudem setzen wir ein Häkchen in dem Feld **XRechnung** und tragen eine gültige Leitweg-ID in das Feld **Leitweg-ID** ein. In diesem Testbeispiel haben wir eine Test-Leitweg-ID **123-456-76** eingetragen.  
Die **Leitweg-ID** dient der eindeutigen Identifikation des Rechnungsempfängers (näheres finden Sie im Abschnitt: **Leitweg-ID).**   
Mittels der **Dropdown**-Liste **XRechnung PDF als Anhang** haben Sie die Möglichkeit zu bestimmen, ob neben der XRechnung noch die Rechnung als PDF-Datei ‚angehängt‘ werden soll. Die PDF-Datei kann dabei entweder per Mail als zusätzlichen Anhang behandelt werden (**Mail-Modul**), oder in die XML-Datei eingebettet werden. Weitere Informationen zu eingebetteten Anhängen finden Sie unter dem Abschnitt **Begleitende Dokumente**.  
Da es sich bei der Rechnung um eine Verkaufsrechnung handelt, wählen wir in dem Feld **PEPPOL Verwendung** den Eintrag **Verkaufsrechnung** aus der **Dropdown-Liste** aus.   
Aus der **Dropdown-Liste** des Feldes **PEPPOL Version** selektieren wir **PEPPOL BIS3.** Nun können wir aus der Rechnung eine XRechnung erzeugen.

{{<notice info>}}Wenn Sie das E-Mail-Modul des Connector 365 erworben haben, so können Sie XRechnung auch für den Jobmodus E-Mail einrichten, um erzeugte XML-Dateien direkt per Mail an den Empfänger weiterzuleiten.{{</notice>}}

## XRechnung Version
<a name="xrechnung-version"></a>

Für den Standard XRechnung gibt es mehrere veröffentlichte Versionen, die jeweils für einen bestimmten Zeitpunkt gültig sind. 
In der **PEPPOL/XRechnung Einrichtung** können Sie angeben, welche Version der XRechnung verwendet werden soll. Jede XRechnung Version verwendet dabei eine eigene Kennung (hier **Kennung Standard XRechnung**):


Klicken Sie auf den Pfeil am rechten Rand des Feldes **XRechnung-Version**, um eine Übersicht über aktuell verzeichnete Versionen zu erhalten.

|![](images/connectornav/data_exchange/xr-version-assist-de.png)|
|-|

Es öffnet sich ein neues Fenster:

|![](images/connectornav/data_exchange/xr-version-page-de.png)|
|-|

Nun erhalten Sie eine Übersicht über XRechnung-Versionen inklusive deren Gültigkeit. 
Hier kann nun eine Version ausgewählt werden, indem eine beliebige Zeile markiert und anschließend die Seite durch Klicken auf **Ok** bestätigt wird.

### XRechnung Versionen synchronisieren/bearbeiten

Verfügbare XRechnung-Versionen sowie dessen Kennungen können über das Internet synchronisiert werden.
Unter **Connector 365 Einrichtung** für XRechnung finden Sie dazu eine Aktion **Versionen synchronisieren**, die ausgeführt werden kann.

|![](images/connectornav/data_exchange/xr-update-version-de.png)|
|-|

Wenn der Funktionsaufruf erfolgreich abgeschlossen ist und neue Versionen gefunden werden konnten, werden diese in der Versionliste mit angezeigt und können ausgewählt werden (Siehe oben).

Zusätzlich wurde die Möglichkeit offen gelassen, XRechnung-Versionen auch manuell zu editieren. Hierzu steht ein weiterer Funktionsaufruf **Versionen manuell bearbeiten** zur Verfügung:

|![](images/connectornav/data_exchange/xr-update-version-manually-de.png)|
|-|

Aktuell voreingstellte Versionen und Kennungen:

| Version | Kennung | Gültig ab |
|-|-|-|
| 3.0 | urn:cen.eu:en16931:2017#compliant#urn:xeinkauf.de:kosit:xrechnung_3.0 | 01.02.2024 |
| **2.3** | **urn:cen.eu:en16931:2017#compliant#urn:xoev-de:kosit:standard:xrechnung_2.3** | 01.08.2023 |
| 2.2 | urn:cen.eu:en16931:2017#compliant#urn:xoev-de:kosit:standard:xrechnung_2.2 | 01.02.2023 |
