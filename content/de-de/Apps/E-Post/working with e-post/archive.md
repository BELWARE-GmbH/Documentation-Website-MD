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
|99| **Verarbeitungsfehler**: Siehe [Fehlerliste](de-de/apps/e-post/working-with-e-post/archive#fehlerliste) |

content\de-de\Apps\E-Post\working with e-post\archive.md
Einen schnellen Überblick über erfolgreich versendete, noch offene und nicht erfolgreich versendete Belege der letzten 30 Tage finden Sie auf den Kacheln für den E-Post Status im Rollencenter.

![](images/apps/E-POST/de-de/rollencenter.png)

## Fehlerliste
<a id="fehlerliste"></a>

Im Folgenden finden Sie eine Liste von Codes zu möglichen Fehlern, Warnungen und Informationen.

| Fehlercode-Typ | Fehlercode-Beschreibung | Präfix |
|-|-|-|
| Error | Fehler aufgetreten, Handlungsbedarf, Verarbeitungsabbruch | E |
| Warnungen | Fehler aufgetreten, möglicher Handlungsbedarf, kein Verarbeitungsabbruch | W |
| Infos | Reine Informationen, kein Handlungsbedarf | I |

##### Fehler
| Fehlercode | Beschreibung |
| - | - |
| E001 | Ungültige Zugangsdaten - Bitte überprüfen Sie Ihre Anmeldedaten |
| E002 | Ungültige Zugangsdaten - VendorSubID ungültig |
| E003 | Zu viele SMS Anfragen - Es wurden innerhalb kurzer Zeit zu viele SMS-Codes angefordert. Die Anfrage über diese Kennung ist für 15 min blockiert.|
| E004 | Diese EKP wurde von der Deutsche Post AG gesperrt |
| E101 | Ungültiges Token - Abgelaufen |
| E201 | Ungültige Statusabfrage - Es wurde keine Sendung über dieses Suchkriterium gefunden |
| E301 | Kein PDF-Format erkannt |
| E302 | Erkannte Verletzung des DVF Sperrbereich |
| E303 | Maximale Dateigröße von 20 MB überschritten |
| E304 | Maximale Seitenanzahl von 94 Seiten überschritten |
| E305 | Ungültiger Ländercode: {Platzhalter für Fehlerdetails}|
| E306 | Ungültiges Format der Empfängeradresse erkannt: {Platzhalter für Fehlerdetails}|
| E307 | 1. Seite im Querformat eingeliefert - Dateiname: {Platzhalter für Fehlerdetails}|
| E308 | Kein DinA4 Format - Dateiname: {Platzhalter für Fehlerdetails}|
| E309 | Dublette bei eingelieferten Dateinamen erkannt - {Platzhalter für Fehlerdetails}|
| E311 | Unzulässige Kombination: Einschreiben und Ausland|
| E312 | Unzulässige Kombination: Dublex + Einschreiben|
| E313 | Verletzung des Letter-Schemas: {Platzhalter für Fehlerdetails}|
| E314 | Maximale Deckblatt-Dateigröße von 1 MB überschritten|
| E315 | Fehler in Sendungsverarbeitung: {Platzhalter für Fehlerdetails}|
| E316 | Fehler bei Sendungsupload: {Platzhalter für Fehlerdetails}|
| E317 | Unzulässiges Einschreiben-Format in Feld RegisteredLetter: {Platzhalter für Fehlerdetails}|
| E318 | Ablehnung in Druckzentrum: {Platzhalter für Fehlerdetails}|
| E319 | EKP ist nicht für das Druckzentrum freigegeben. Ein Live-Versand ist aktuell noch nicht möglich.|
| E320 | Die maximal zulässige Menge an Testsendungen pro Tag wurde erreicht. Es sind heute keine weiteren Testsendungen möglich|
| E321 | (Überholt) Es wurden nicht alle notwendigen Rückschein-Adressfelder für Einschreiben per Rückschein angegeben|
| E322 | Zu hohe Abfragefrequenz von Letter-Status Anfragen. Die Mindestdauer zwischen 2 Statusabfragen liegt bei 5 Sekunden.|
| E323 | Kein Inhalt im Empfängerbereich der PDF erkannt (Weiße Fläche)|
| E399 | Allgemeiner Fehler: {Platzhalter für Fehlerdetails}|
| E501 | API-Status: Inaktiv {Platzhalter für Fehlerdetails}|
| E601 | PlugIn Fehler: {Platzhalter für Fehlerdetails}|
| E900 | Unspezifizierter Fehler: {Platzhalter für Fehlerdetails}|

##### Warnungen

| Warnung-Code | Beschreibung |
|-|-|
|W101 | PDF/A Konvertierungswarnungen: {Platzhalter für Details} |
|W201 | Überschreitung Adressbereich: {Platzhalter für Details}|
|W202 | Überschreitung Sperrfläche Links: Dieser Bereich wird im Druckzentrum geweißt|
|W220 | Die angegeben Daten zum Rückschein von Einschreiben werden mit dem 01.10.2022 nur noch automatisch aus dem Sichtfenster des Briefes ermittelt. Dies gilt insbesondere für die Rücksendeadresse aus der im Sichtfenster ermittelbaren Absenderzeile. Mögliche explizite Angaben werden ab diesem Zeitpunkt nicht mehr verwendet.|
|W301 | Senderadresse nicht vorhanden |
|W501 | API-Status: Wartungsankündigung {Platzhalter für Details} |
|W601 | PlugIn Warnung: {Platzhalter für Details} |

##### Infos

| Info-Code | Beschreibung |
|-|-|
| I101 | Zusatzoption: PDF -> PDFA Konvertierung |
| I501 | API-Status: OK |
| I601 | PlugIn Info: {Platzhalter für Details} |
| I701 | Track And Trace Statusmeldung: {Platzhalter für Details} |
| I751 | Statusmeldung zum Zielgebiet: {Platzhalter für Details} |
