---
title: "Gebuchte Verkaufsrechnungen"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### SMTP2FAX in Gebuchte Verkaufsrechnungen

Auf der Seite der gebuchten Verkaufsrechnungen ist die Funktion im Menü "Drucken/Senden" zu finden.

![](images/apps/smtp2fax/SMTP2FAX_gebVerkRechnungen.png)

Die verwendete Faxnummer wird nach folgender Logik ausgewählt:
Ist in einer Rechnung ein abweichender Rechnungsempfänger angegeben, wird in dessen Dokumentlayouts nach einer Faxnummer gesucht, die für die Verwendung mit Rechnungen eingetragen wurde. Wird dort keine gefunden, wird die in der Karte des Rechnungsempfängers eingetragene Faxnummer verwendet.

Ist kein abweichender Rechnungsempfänger angegeben, gilt die gleiche Priorisierung für den Debitor.
Zunächst wird in dessen Dokumentlayouts nach einer für Rechnungen angegebenen Faxnummer gesucht. Wird keine gefunden, wird diejenige aus der Karte des Debitors verwendet.

Auch auf der Seite einer einzelnen gebuchten Verkaufsrechnung findet sich die Funktion im Menü "Drucken/Senden".

![](images/apps/smtp2fax/SMTP2FAX_gebVerkRechnung.png)

Die Logik für die Auswahl der Faxnummer des Empfängers ist auch hier wie oben beschrieben.

Nach Betätigen des SMTP2FAX-Buttons wird der Bericht verarbeitet und ein [Dialogfenster](de-de/apps/smtp2fax/working-with-smtp2fax/smtp2faxdialog/) zur weiteren Bearbeitung geöffnet.

