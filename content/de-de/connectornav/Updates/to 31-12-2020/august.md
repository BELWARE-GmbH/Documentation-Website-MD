---
title: "August"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 8
---
### Neues in den Dokumentationen:

Wie immer haben wir unsere Dokumentationen entsprechend der neuen Features angepasst. In welcher Dokumentation einzelne Punkte zu finden sind ist aufgeführt.

[Zu den Dokumentationen](/de-de/connectornav/)

### Erweiterungen von Standardfeatures:

**Automatisches füllen der Zieladresse in der Kommunikationsmatrix**
In der Kommunikationsmatrix wird nun das Feld der Zieladresse anhand der Einstellungen in den Zieladressen automatisch ausgefüllt. Zusätzlich dazu gibt es nun einen Assist-Knopf der auf den jeweiligen Kontakt vorgefiltert ist. Natürlich ist ein manuelles ausfüllen ebenfalls noch möglich.

**Neuer Platzhalter für Mandaten in der zusätzlichen Ausgabe**
In der Benutzerbericht Einrichtung steht Ihnen nun der neue Platzhalter %9 im Pfad für zusätzliche Ausgabeordner zur Verfügung. Dieser Platzhalter kann dazu genutzt werden um einen Mandaten-spezifischen Ordner anzugeben. So lassen sich Mehrmandantensysteme leichter strukturieren. 

**Neuer Berechtigungssatz Service Password**
Diese neue Berechtigung erlaubt das Steuern des Zugriffs auf die Passwörter im Mail Sender

### Optimierungen:

**Entferne Fehlermeldung Kommunikationsmatrix-Knopf**
War bei einem Kontakt die Kommunikationsmatrix nicht eingerichtet, so kam es bisher zu einer Fehlermeldung bei Klick auf den Kommunikationsmatrix-Knopf, auf Wunsch vieler Nutzer haben wir diese Meldung entfernt und es ermöglicAccordion Item 7HeaderIconht die Kommunikatrionxmatrix direkt zu öffnen.

**Fehlerbehebung Jobmodus E-Post**
Bei dem Jobmodus E-Post gab es in Verbindung mit Mahnungen verschiedene kleinere Fehler in der Programmierung, diese wurden bereinigt.

**die Statusabfrage für E-POST Briefe pausiert nun für 6 Sekunden**
Dies wurde implementiert um eine Überlastung der E-POST API durch Anfragen zu verhindern.