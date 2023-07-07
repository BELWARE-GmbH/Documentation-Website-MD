---
title: "Benutzerbericht Einrichtung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---

#### Die Connector NAV Benutzerbericht Einrichtung

![](/images/connectornav/status/ben_ber_einr_Warteschlange.png)<center>Connector NAV Benutzerbericht Einrichtung, Register Allgemein</center>

Für das Versenden von Statusmeldungen zu Warteschlangenfehlern wird ein Satz in der Benutzerberichts Einrichtung mit folgenden Parametern angelegt:

|Feldbeschreibung | |
|---|---|
| Benutzer      | Leer.                                      |
| Sprache       | Leer.                                      |
| Berichts ID   | -1                                         |
| Bodytextdatei | Bodytextdatei für die Statusrückmeldung.   |
| HTML Bodytext | Ja, wenn der Bodytext eine HTML-Datei ist. |

Beispiel für einen Bodytext:

Die Aufgabenwarteschlange 5402516 "CON Base PDF Server" ist während der Verarbeitung auf einen Fehler gestoßen mit folgender Meldung: %36