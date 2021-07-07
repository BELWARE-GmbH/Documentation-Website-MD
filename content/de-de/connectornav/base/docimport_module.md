---
title: "Das Modul DocImport"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---

### Das Modul DocImport

#### Nutzen

Mit dem Modul DocImport können Sie externe Dokumente in Microsoft Dynamics NAV zentral verwalten. Sie minimieren Ihren Papieraufwand, indem Sie wichtige Dokumente jeder Art in der Jobliste ablegen. Sie finden Ihre Dokumente nicht nur schneller, Sie sparen damit auch Zeit und verringern die Wahrscheinlichkeit, dass etwas abhandenkommt.

#### Verschiebung der Dokumente

Navigieren Sie zu dem Pfad, den Sie in der Dokumentation **Connector NAV Konfiguration und Einrichtung** unter dem Menüpunkt **Connector NAV Einrichtung, Register E-Mail** im Feld **Dokumenteneingangsverzeichnis** eingetragen haben. Im Beispiel heißt dieser hier com_docImport. In diesem Ordner können Sie beliebige Dokumente ablegen.

{{<img src="/images/connectornav/base/docimport_ordnerstruktur.png" caption="Ordnerstuktur com_docimport">}}

#### Die Connector NAV Eingehende Dokumente 

{{<img src="/images/connectornav/base/docimport_eing_dok.png" caption="Connector NAV Eingehende Dokumente">}}

In der Übersicht werden alle Jobeinträge angezeigt, die entweder keinem Beleg zugeordnet wurden oder nicht manuell auf „zugeordnet“ gesetzt wurden. Es ist die zentrale Stelle zum Importieren der Dokumente. Anschließend können die Einträge direkt zugeordnet, oder an Arbeitsgruppen verteilt werden. Danach verschwindet der Eintrag in dieser Übersicht. In der *Connector NAV Arbeitsgruppe Dokumente* öffnet sich die Liste mit allen Einträgen, die der Arbeitsgruppe des Benutzers entsprechen (siehe Dokumentation Connector NAV Konfiguration und Einrichtung).

####  Die Connector NAV Arbeitsgruppen Dokumente 

{{<img src="/images/connectornav/base/docimport_arbeitsgruppen.png" caption="Connector NAV Arbeitsgruppen Dokumente">}}

Die nachfolgenden Aktionen können in beiden Übersichten ausgeführt werden.

##### Aktionen

{{<img src="/images/connectornav/base/eing_dok_aktionen.png" caption="Connector NAV Eingehende Dokumente / Arbeitsgruppen Dokumente, Aktionen">}}

|Aktionen | |
|---|---|
| Jobdatei anzeigen     | Mit dieser Aktion wird das Dokument angezeigt.                                  |
| Dokumente importieren | Mit dieser Aktion importieren Sie die Dokumente aus dem Ordner in die Jobliste. |

##### Dokumente zuordnen

Mit dieser Aktion lassen sich die Jobeinträge zu einem Beleg zuordnen. Aus den Folgenden Abteilungen kann gewählt werden.

{{<img src="/images/connectornav/base/dokumente_zuordnen.png" caption="Connector NAV Eingehende Dokumente, Aktion Dokumente zuordnen">}}

|Folgende Belege stehen zur Verfügung: | |
|---|---|
| Verkauf | - Verkaufsangebot<br /> - Verkaufsauftrag<br /> - Rahmenauftrag<br /> - Geb. Verkaufsrechnung<br /> - Geb. Verkaufslieferung<br /> - Geb. Verkaufsgutschrift |
| Einkauf   | - Einkaufsanfrage<br /> - Einkaufsbestellung<br /> - Rahmenbestellung<br /> - Geb. Einkaufsrechnung<br /> - Geb. Einkaufslieferung<br /> - Geb. Einkaufsgutschrift |
| Fibu      | - Reg. Mahnung<br /> - Reg. Lieferanmahnung                                                                                                |
| Sonstiges | - Kontakt<br /> - Aufgabe                                                                                                                  |

##### Eintrag bearbeiten

Mit dieser Aktion lassen sich die Jobeinträge um Informationen ergänzen.

{{<img src="/images/connectornav/base/eintrag_bearbeiten.png" caption="Connector NAV Eingehende Dokumente, Aktion Eintrag bearbeiten">}}
