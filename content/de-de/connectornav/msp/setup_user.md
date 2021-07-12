---
title: "Benutzer einrichten"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---

#### Einrichten einer SMTP Adresse pro Benutzer

Zunächst müssen wir auf die Benutzer Einrichtung des gewünschten Nutzers zugreifen, um sicherzustellen, dass dort überhaupt bzw. die korrekte E-Mail-Adresse angegeben ist.

![](/images/connectornav/msp/smtp_ben.png)<center>Die Benutzereinrichtung für den Benutzer Max Mustermann</center>

Prüfen Sie ob das markierte E-Mail Feld (korrekt) ausgefüllt ist. Nehmen Sie ggf. Änderungen vor und schließen Sie die Benutzer Einrichtung anschließend. Öffnen Sie nun die Mail Sender Plus Einrichtung, welche im Connector NAV Menü zu finden ist.

![](/images/connectornav/msp/smtp_ben1.png)<center>Übersicht der E-Mail Sender Plus Funktion mit geöffneter Einrichtung</center>

In der Mail Sender Plus Einrichtung müssen Sie nun einen neuen Eintrag über den Knopf „Neu“ anlegen. Es öffnet sich ein neues Fenster in der Sie die Adresse des SMTP Kontos, welches Sie nutzen wollen, zusammen mit dem dazugehörigen Passwort angeben müssen. Damit ist die Einrichtung für diesen Benutzer abgeschlossen und Sie können das Fenster schließen.

Wird nun ein E-Mail Versand vom eingerichteten Benutzer ausgelöst in einem Bericht, in dem keine abweichende Adresse per Benutzerbericht hinterlegt wurde, so wird die eben hinterlegte Adresse für den Versand genutzt.

![](/images/connectornav/msp/smtp_ben2.png)<center>Der Dialog für den Mailversand</center>

