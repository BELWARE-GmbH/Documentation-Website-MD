---
title: "Benutzerbericht Einrichtung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---

#### Die Connector NAV Benutzerbericht Einrichtung

![](/images/connectornav/status/ben_ber_einr.png)<center>Connector NAV Benutzerbericht Einrichtung, Register Allgemein</center>

Für das Versenden von Statusmeldungen wird ein Satz in der Benutzerberichts Einrichtung mit folgenden Parametern angelegt:

|Feldbeschreibung | |
|---|---|
| Benutzer      | Leer.                                      |
| Sprache       | Leer.                                      |
| Berichts ID   | 0.                                         |
| Bodytextdatei | Bodytextdatei für die Statusrückmeldung.   |
| HTML Bodytext | Ja, wenn der Bodytext eine HTML-Datei ist. |

Beispiel für einen Bodytext:

Der Job wurde nicht versendet. Bitte prüfen Sie den Vorgang.

Fehler aus Rückmeldung: %17  
Job-Nummer: %18  
Status: %19  
Betreff: %21