---
title: "Versand"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Arbeiten mit der E-POST API

### Versand

Mit unserer API können Sie Rechnungen, Gutschriften, Mahnungen, Angebote und Aufträge versenden. In unserem Beispiel für die Anwendung werden wir uns aber auf Rechnungen konzentrieren.

![](images/apps/epostrechnung.PNG)

Wählen Sie zunächst die Rechnung aus welche Sie versenden möchten.

Die Funktion zum versenden von E-POST Briefen finden Sie unter **"Drucken/Senden"** in der Menüleiste. Klappen Sie diese auf und wählen **"Als E-Post Brief versenden"**, um den Dialog zum versenden von E-POST Briefen zu öffnen.

![](images/apps/epostprintsend.PNG)

### Der Dialog

Im Dialog haben Sie die Möglichkeit bestimmte Optionen für den Versand des Briefes anzupassen, z.B. ob Sie den Brief schwarz-weiß oder in Farbe versenden möchten.

![](images/apps/epostdialog.PNG)

Nachdem Sie alle gewünschten Änderungen vorgenommen haben, können Sie den Versand mit einem Click auf **"OK"** ausführen. Ihre Rechnung wird nun an die Deutsche Post übermittelt und von dort aus an den Empfänger.

{{< notice info "Hinweis" >}}
 _Die App zieht sich die Adresse des Empfängers automatisch aus dessen Daten_
{{< /notice >}}
#

#### Aktionen

| Feld         | Beschreibung                                                                                                                   |
|--------------|--------------------------------------------------------------------------------------------------------------------------------|
| Farbauswahl  | Hier wählen Sie ob der Brief farbig oder s/w gedruckt wird                                                                     |
| Deckblatt    | Briefe mit Deckblatt versenden stellt sicher das der Brief nicht die Bereiche überschreitet, welche die Deutsche Post benötigt |
| Duplex       | Ermöglicht, dass Briefe als Duplext versendet werden                                                                           |
| Einschreiben | Hier können Sie die verschiedenen Möglichkeiten des Einschreibens einzurichten                                                 |
| Kontaktname  | Der Name des Empfängers                                                                                                        |
| Adresse 1    | Die Straße des Empfängers                                                                                                      |
| Adresse 2    | Weitere Informationen zur Adresse                                                                                              |
| PLZ          | Die PLZ des Empfängers                                                                                                         |
| Stadt        | Die Stadt des Empfängers                                                                                                       |
| Land         | Das Land des Empfängers                                                                                                        |