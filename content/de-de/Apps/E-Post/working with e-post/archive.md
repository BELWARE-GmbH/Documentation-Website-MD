---
title: "Archiv"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Arbeiten mit der Connector 365 E-POST App

### Archiv

Nach dem Versand der Belege können Sie den Versandstatus an verschiedenen Stellen in Dynamics 365 Business Central prüfen:

Im Factbox-Bereich der Belege finden Sie die **"Connector 365 Aktivitäten"**. Dort finden Sie die Kurzübersicht zu jedem einzelnen Vorgang. Diese Factbox finden Sie sowohl in der Übersicht als auch in der Karte der jeweiligen Belege.
Durch Klicken des Feldes **"Angenommen um"** gelangen Sie in zur vollständigen Übersicht. Durch Klicken des Feldes **"Status"** gelangen Sie zur detaillierten Statusübersicht des jeweiligen Vorgangs.

![](images/apps/E-POST/de-de/app_activities_factbox.png)

Die Seite **"Connector 365 Aktivitäten"** bietet Ihnen eine detaillierte Übersicht zu allen Briefen, die versendet wurden. Hier werden die Optionen angezeigt, die genutzt wurden und Meldungen zu eventuell aufgetretenen Fehlern.
 Ist in der Einrichtung die Option **"Datei in Jobliste speichern"** aktiv, dann können Sie den versendeten Beleg ebenfalls einsehen. Dazu klicken Sie einfach unter **"Dateiname"** auf den jeweiligen Namen der Datei.

![](images/apps/E-POST/de-de/app_activities_full.png)

Ein Klick auf die Statusmarkierung eines Eintrags öffnet die Tabelle der Feedbackeinträge.
![](images/apps/E-POST/de-de/rueckmeldungstabelle_de.png)

Interessant sind hier die durch die E-Post API zurückgemeldete Status-ID, der beschreibende Statustext und Zeitangaben zu verschiedenen Bearbeitungsschritten. Bei Verarbeitungsfehlern werden diese mit dazugehörigem Code, Fehlerlevel und Beschreibung protokolliert.

Der Status ist durch die API der Deutschen Post untergliedert in folgende Stufen:
|Status|Bedeutung|
|------|---------|
|1| **Annahme der Sendung:** erfolgreiche Übermittlung der Sendung <br/>Status-Platzierung: bei erfolgreichem Upload der Sendung|
|2| **Verarbeitung der Sendung:** PDF wurde geprüft und für den Versand an das Druckzentrum freigegeben <br/>Status-Platzierung: einige Minuten nach Annahme der Sendung|
|3| **Einlieferung in Druckzentrum:** der Empfang der Sendung wurde vom Druckzentrum an die API zurückgemeldet <br/> Status-Platzierung: innerhalb der nächsten Stunden nach Verarbeitung der Sendung|
|4| **Verarbeitung in Druckzentrum:** Sendung wurde als "versendet" vom Druckzentrum zurückgemeldet <br/> Status-Platzierung: ein bis zwei Werktage nach Einlieferung in das Druckzentrum|


Einen schnellen Überblick über erfolgreich versendete, noch offene und nicht erfolgreich versendete Belege der letzten 30 Tage finden Sie auf den Kacheln für den E-Post Status im Rollencenter.

![](images/apps/E-POST/de-de/rollencenter.png)
