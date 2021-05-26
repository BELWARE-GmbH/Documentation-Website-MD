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

Mit unserer Connector 365 E-POST App* können Sie Geb. Verkaufsrechnungen, Geb. Verkaufsgutschriften, Reg. Mahnungen, Angebote und Verkaufsaufträge versenden. In unserem Beispiel für die Anwendung konzentrieren wir uns auf die Geb. Verkaufsrechnungen. Alle anderen Belege können in gleicher Art und Weise verarbeitet werden.

![](images/apps/epostubersichtde.PNG)

Wählen Sie zunächst den Beleg aus, welchen Sie versenden möchten.

Die Funktion zum versenden von postalischen Briefen finden Sie unter **"Drucken/Senden"** in der Menüleiste. Klappen Sie diese auf und wählen **"Als Brief senden"**, um den Dialog zum versenden von Briefen zu öffnen.

![](images/apps/epostdruckensendende.PNG)

### Der Dialog

Im Dialog haben Sie die Möglichkeit bestimmte Optionen für den Versand des Briefes anzupassen, z.B. ob Sie den Brief schwarz-weiß oder in Farbe versenden möchten.

![](images/apps/epostdialogde.PNG)

Nachdem Sie alle gewünschten Änderungen vorgenommen haben, können Sie den Versand mit einem Click auf **"OK"** ausführen. Ihre Rechnung wird nun an die Deutsche Post übermittelt und von dort aus direkt dem Empfänger in den Briefkasten.

{{< notice info "Hinweis" >}}
 _Die Connector 365 E-POST App zieht sich die Adresse des Empfängers automatisch aus dessen Daten_
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