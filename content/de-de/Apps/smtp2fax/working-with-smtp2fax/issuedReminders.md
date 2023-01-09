---
title: "Registrierte Mahnungen"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 3
---
### SMTP2FAX in Registrierte Mahnungen

Auf der Seite der registrierten Mahnungen ist die Funktion abhängig von der Business Central Version in verschiedenen Menüs zu finden, z. B. unter "Verarbeiten" oder wie im Screenshot im Menü "Start".

![](images/apps/smtp2fax/SMTP2FAX_regMahnungen.png)

Die verwendete Faxnummer wird nach folgender Logik ausgewählt:
Zunächst wird in den Dokumentlayouts des Debitors, der als Empfänger angegeben ist, nach einer Faxnummer gesucht, die für die Verwendung mit Mahnungen eingetragen wurde.
Wird dort keine gefunden, wird die in der Karte des Mahnungsempfängers eingetragene Faxnummer verwendet.

Auch auf der Seite einer einzelnen registrierten Mahnung kann sich die Funktion je nach Business Central Version in einem anderen Menü wiederfinden, im Screenshot zu sehen das Menü "Start".

![](images/apps/smtp2fax/SMTP2FAX_regMahnung.png)

Die Logik für die Auswahl der Faxnummer des Empfängers ist auch hier wie oben beschrieben.

Nach Betätigen des SMTP2FAX-Buttons wird der Bericht verarbeitet und ein [Dialogfenster](de-de/apps/smtp2fax/working-with-smtp2fax/smtp2faxdialog/) zur weiteren Bearbeitung geöffnet.