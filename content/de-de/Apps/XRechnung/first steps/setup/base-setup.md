---
title: "Grundeinrichtung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Grundeinrichtung

Um die grundlegende Einstellungen für die **Connector 365 XRechnung** App vorzunehmen, navigieren Sie über die Suchleiste
zu der **Connector 365 Einrichtung**. 
Die **Connector 365 XRechnung** App erweitert die Einrichtungsseite um einen eigenen XRechnung-Bereich.

|![](/images/apps/XRechnung/de/xr-setup.png)|
|-|

Der Abschnitt XRechnung enthält folgende Felder und Einstellmöglichkeiten:
| Feld | Bedeutung |
|-|-|
| **XRechnung validieren** | Ja, wenn XRechnungen mithilfe des XRechnung-Validators validiert werden sollen. Nein, um keine Prüfung von XRechungen vorzunehmen|
| **XRechnung-Version** | Die aktuell genutzte XRechnung Version.|
| **Kennung XRechnung** | Die XRechnung-Kennung, welche für die aktuelle XRechnung-Version genutzt wird. |
| **Debitoren-E-Mail als Rückfalloption** | Gibt an, ob die E-Mail-Adresse des Debitors verwendet werden soll, wenn keine E-Mail-Adresse im Dokumentlayout definiert wurde. <br> {{< notice info Hinweis >}} Diese Option ist **nicht** sichtbar, wenn die Extension ***Connector 365 Addressee Control*** installiert ist - die Kontrolle der Empfängeradressen wird in diesem Fall von dieser Extension übernommen. {{< /notice >}} |
| **Nullbeträge einbeziehen** | Wenn deaktiviert, werden Zeilen mit einem Gesamtbetrag von 0 von der XRechnung ausgeschlossen. |
### XRechnung-Version

Wie unter [Einleitung](de-de/apps/xrechnung/first-steps/introduction/) aufgeführt, gibt es für XRechnung mehrere veröffentlichte Versionen, die jeweils für einen bestimmten Zeitpunkt gültig sind. 
In der **Connector 365 Einrichtung** können Sie angeben, welche Version der XRechnung verwendet werden soll. Jede XRechnung Version verwendet dabei eine eigene Kennung (hier **Kennung XRechnung**):


Klicken Sie auf die drei Punkte des Feldes **XRechnung-Version** um eine Übersicht über aktuell verzeichnete Versionen zu erhalten.

|![](images/apps/XRechnung/de/xr_version_assist_de.png)|
|-|

Es öffnet sich ein neues Fenster:

|![](images/apps/XRechnung/de/xr_version_page_de.png)|
|-|

Nun erhalten Sie eine Übersicht über XRechnung-Versionen inklusive deren Gültigkeit. 
Hier kann nun eine Version ausgewählt werden, indem eine beliebige Zeile markiert und anschließend die Seite durch Klicken auf **Ok** bestätigt wird.

### XRechnung Versionen synchronisieren/bearbeiten

Verfügbare XRechnung-Versionen sowie dessen Kennungen können über das Internet synchronisiert werden.
Unter **Connector 365 Einrichtung** für XRechnung finden Sie dazu eine Aktion **Versionen synchronisieren**, die ausgeführt werden kann.

|![](images/apps/XRechnung/de/xr_update_version_de.png)|
|-|

Wenn der Funktionsaufruf erfolgreich abgeschlossen ist und neue Versionen gefunden werden konnten, werden diese in der Versionliste mit angezeigt und können ausgewählt werden (Siehe oben).

Zusätzlich wurde die Möglichkeit offen gelassen, XRechnung-Versionen auch manuell zu editieren. Hierzu steht ein weiterer Funktionsaufruf **Versionen manuell bearbeiten** zur Verfügung:

|![](images/apps/XRechnung/de/xr_update_version_manually_de.png)|
|-|

Aktuell voreingstellte Versionen und Kennungen:

| Version | Kennung | Gültig ab |
|-|-|-|
| **3.0** | **urn:cen.eu:en16931:2017#compliant#urn:xeinkauf.de:kosit:xrechnung_3.0** | 01.02.2024 |
| 2.3 | urn:cen.eu:en16931:2017#compliant#urn:xoev-de:kosit:standard:xrechnung_2.3 | 01.08.2023 |
| 2.2 | urn:cen.eu:en16931:2017#compliant#urn:xoev-de:kosit:standard:xrechnung_2.2 | 01.02.2023 |

### XRechnung Syntax
<a id="xrechnung-syntax"></a>

#### Was bedeutet XRechnung-Syntax – UBL, CII und ZUGFeRD im Überblick

Die XRechnung ist ein standardisiertes Rechnungsformat für elektronische Rechnungen an öffentliche Auftraggeber in Deutschland. Sie basiert auf europäischen Vorgaben (insb. EN 16931) und kann in unterschiedlichen Syntax-Formaten umgesetzt werden.

- ***UBL***
UBL (Universal Business Language) ist ein XML-basiertes Format, das international weit verbreitet ist.
Es bietet eine klare Struktur für Geschäftsprozesse wie Rechnungen, Lieferscheine oder Bestellungen.
<br>

- ***CII***
CII (Cross Industry Invoice) ist ein weiterer XML-basierter Standard, entwickelt von UN/CEFACT.
Es ist semantisch genauer und bietet mehr Flexibilität, insbesondere bei komplexen Rechnungsinhalten.
Die Unterstützung von CII stellt eine wichtige Erweiterung dar, da beide Formate offiziell für XRechnungen zugelassen sind.
<br>

- ***ZUGFeRD-PDF***:
ZUGFeRD (Zentraler User Guide des Forums elektronische Rechnung Deutschland) kombiniert strukturierte XML-Daten mit einem PDF/A-3B-Dokument, in das die XML-Datei eingebettet ist.
Es basiert ebenfalls auf der europäischen Norm EN 16931 und verwendet im XML-Teil den CII-Syntax (Cross Industry Invoice) nach UN/CEFACT.

{{< notice info Hinweis >}}
ZUGFeRD ist nicht identisch mit der XRechnung – beide Formate können jedoch parallel genutzt werden, sofern der Empfänger dies unterstützt.