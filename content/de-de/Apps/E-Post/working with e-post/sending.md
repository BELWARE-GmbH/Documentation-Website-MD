---
title: "Versand"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Arbeiten mit der Connector 365 E-POST App

### Versand

{{< notice info "Hinweis" >}}
Die durch unsere App [unterstützten Belegarten](de-de/apps/e-post/first-steps/introduction/) finden Sie zusammengefasst in der [Einleitung](de-de/apps/e-post/first-steps/introduction/).
{{< /notice>}}

In unserem Beispiel für die Anwendung konzentrieren wir uns auf die Geb. Verkaufsrechnungen. Alle anderen Belege können in gleicher Art und Weise verarbeitet werden.

Wählen Sie zunächst den Beleg aus, welchen Sie versenden möchten.

Die Funktion zum Versenden von postalischen Briefen finden Sie unter **"Drucken/Senden"** in der Menüleiste. Klappen Sie diese auf und wählen **"Als Brief senden"** um den Versand zu starten.

![](images/apps/E-POST/de-de/app_send_letter.png)

### Der Dialog

Sofern der Dialog in der **"Connector 365 Einrichtung"** aktiviert ist, haben Sie nun im Dialogfenster die Möglichkeit, bestimmte Optionen für den Versand des Briefes anzupassen, z.B. ob Sie den Brief schwarz-weiß oder in Farbe versenden möchten.

![](images/apps/E-POST/de-de/app_dialog.png)

Nachdem Sie alle gewünschten Änderungen vorgenommen haben, können Sie den Versand mit einem Klick auf **"OK"** ausführen. Ihr Beleg wird nun an die Deutsche Post übermittelt und von dort aus direkt dem Empfänger in den Briefkasten zugestellt.

{{< notice info "Hinweis" >}}
 _Die für den Versand genutzten Adressdaten werden aus den Kontaktdaten des im Beleg hinterlegten Rech. an Debitoren übernommen_
{{< /notice >}}
#

#### Aktionen

| Feld         | Beschreibung                                                                                                                                   |
|--------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| Farbauswahl  | Hier wählen Sie aus, ob der Brief farbig oder s/w gedruckt wird                                                                                |
| Deckblatt    | Briefe mit Deckblatt versenden stellt sicher, dass der Brief nicht die Bereiche überschreitet, welche die Deutsche Post für den Druck benötigt |
| Duplex       | Ermöglicht, dass Briefe als Duplex versendet werden                                                                                            |
| Einschreiben | Hier können Sie die verschiedenen Möglichkeiten für Einschreibens einrichten                                                                   |
| Kontaktname  | Der Name des Empfängers                                                                                                                        |
| Adresse 1    | Die Straße des Empfängers                                                                                                                      |
| Adresse 2    | Weitere Informationen zur Adresse                                                                                                              |
| PLZ          | Die PLZ des Empfängers                                                                                                                         |
| Stadt        | Die Stadt des Empfängers                                                                                                                       |
| Land         | Das Land des Empfängers                                                                                                                        |




***Die Connector 365 E-POST App, setzt auf die E-POSTBUSINESS API, einen Service der Deutschen Post.**