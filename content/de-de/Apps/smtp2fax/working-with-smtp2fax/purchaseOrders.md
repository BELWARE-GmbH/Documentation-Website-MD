---
title: "Einkaufsbestellungen"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 4
---
### SMTP2FAX in Einkaufsbestellungen

Auf der Seite der Einkaufsbestellungen ist die Funktion im Menü "Drucken/Senden" zu finden.

![](images/apps/smtp2fax/SMTP2FAX_EinkBestellungen.png)

Die verwendete Faxnummer wird nach folgender Logik ausgewählt:
Zunächst wird in den Dokumentlayouts des Lieferanten, der als Empfänger angegeben ist, nach einer Faxnummer gesucht, die für die Verwendung mit Bestellungen eingetragen wurde. Wird dort keine gefunden, wird die in der Karte des Lieferanten eingetragene Faxnummer verwendet.

Auch auf der Seite einer einzelnen Einkaufsbestellung findet sich die Funktion im Menü "Drucken/Senden".

![](images/apps/smtp2fax/SMTP2FAX_EinkBestellung.png)

Die Logik für die Auswahl der Faxnummer des Empfängers ist auch hier wie oben beschrieben.

Nach Betätigen des SMTP2FAX-Buttons wird der Bericht verarbeitet und ein [Dialogfenster](de-de/apps/smtp2fax/working-with-smtp2fax/smtp2faxdialog/) zur weiteren Bearbeitung geöffnet.