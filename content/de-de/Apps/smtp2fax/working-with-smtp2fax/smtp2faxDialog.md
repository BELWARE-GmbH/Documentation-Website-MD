---
title: "SMTP2FAX Dialog"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 5
---
### Der SMTP2FAX-Dialog

Wurde für einen Bericht der Versand als Fax über SMTP ausgewählt, so erscheint zur weiteren Bearbeitung ein für die Faxanwendung angepasster Mail-Dialog.

![](images/apps/smtp2fax/SMTP2FAX_Dialog.png)

Hier kann nachträglich die Empfängeradresse geändert und der Anhang auf Richtigkeit geprüft werden. Dann kann der Bericht über den jeweiligen Button im oberen Menü versandt oder verworfen werden. Wird der Dialog über das X oder den Schließen-Button beendet, kann noch ausgewählt werden, ob die Nachricht als Enwurf im [Mail-Ausgang](de-de/apps/smtp2fax/working-with-smtp2fax/emailoutbox/) gespeichert oder verworfen werden soll.

Wird das Versenden der Nachricht gewählt, erfolgt ein Eintrag in der [Connector 365 Aktivitätenliste](de-de/apps/smtp2fax/working-with-smtp2fax/archive/). Neben anderen Informationen zur Sendung kann hier über eine Statusmarkierung geprüft werden, ob das Versenden erfolgreich verlaufen oder fehlgeschlagen ist.
Wird der Versand dagegen abgebrochen, erfolgt kein Eintrag in der Aktivitätenliste, auch dann nicht, wenn die Nachricht als Entwurf gespeichert wurde.

