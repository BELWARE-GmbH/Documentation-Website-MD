---
title: "Gebuchte Verkaufsgutschriften"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### SMTP2FAX in Gebuchte Verkaufsgutschriften

Auf der Seite der gebuchten Verkaufsgutschriften ist die Funktion im Menü "Drucken/Senden" zu finden.

![](images/apps/smtp2fax/SMTP2FAX_gebVerkGutschriften.png)

Die verwendete Faxnummer wird nach folgender Logik ausgewählt:
Ist in einer Verkaufsgutschrift ein abweichender Rechnungsempfänger angegeben, wird in dessen Dokumentlayouts nach einer Faxnummer gesucht, die für die Verwendung mit Verkaufsgutschriften eingetragen wurde. Wird dort keine gefunden, wird die in der Karte des Rechnungsempfängers eingetragene Faxnummer verwendet.

Ist kein abweichender Rechnungsempfänger angegeben, gilt die gleiche Priorisierung für den Debitor.
Zunächst wird in dessen Dokumentlayouts nach einer für Verkaufsgutschriften angegebenen Faxnummer gesucht. Wird keine gefunden, wird diejenige aus der Karte des Debitors verwendet.

Auch auf der Seite einer einzelnen gebuchten Verkaufsgutschrift findet sich die Funktion im Menü "Drucken/Senden".

![](images/apps/smtp2fax/SMTP2FAX_gebVerkGutschrift.png)

Die Logik für die Auswahl der Faxnummer des Empfängers ist auch hier wie oben beschrieben.

Nach Betätigen des SMTP2FAX-Buttons wird der Bericht verarbeitet und ein [Dialogfenster](de-de/apps/smtp2fax/working-with-smtp2fax/smtp2faxdialog/) zur weiteren Bearbeitung geöffnet.