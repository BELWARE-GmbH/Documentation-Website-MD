---
title: "E-POSTBUSINESS API"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Erste Schritte

### E-POSTBUSINESS API
Über die Suche unter **"Connector 365 Eirichtung"** können Sie die Einrichtung für die Connector 365 E-POST App* finden, hier setzen Sie alle nötigen Informationen um sicherzustellen, dass die App ohne Probleme funktioniert.

![](images/apps/eposteinrichtungde.PNG)

{{< notice info "Hinweis" >}}
 _Während der Testmodus aktiviert ist, werden keine Rechnungen versendet. Stattdessen erhält die zuvor angegebene Testmail eine Benachrichtigung_
{{< /notice >}}
#
#### Passwort setzen
Um ein Passwort für die App zu setzen, sollten Sie zuerst sicherstellen, dass die Einrichtung vollständig (bis auf das Geheimnis/Passwort) ausgefüllt ist. Anschließend müssen Sie auf **"Passwort setzen"** in der Einrichtung klicken. Es öffnet sich nun ein neuer Dialog und gleichzeitig erhält der Admin der bei der E-POST Registrierung angegeben wurde eine SMS mit einem PIN.

Geben Sie den PIN in das entsprechende Feld ein und bestätigen Sie den Dialog mit OK. Das Passwort ist nun gesetzt und es wird automatisch ein Geheimnis generiert.

| Feld                         | Beschreibung                                                                                       |
|------------------------------|----------------------------------------------------------------------------------------------------|
| API EKP                      | Dies ist Ihre Kundennummer die Sie von der Deutschen Post erhalten haben                           |
| API Geheimnis                | Das Geheimnis wird automatisch erstellt, nachdem Sie Ihr Passwort gesetzt haben                    |
| API Passwort                 | Hier steht Ihr verschlüsseltes Passwort                                                            |
| Datei in Jobliste speichern  | Legt fest ob versendete Dateien in der Jobliste archiviert werden                                  |
| Testmodus                    | Wenn diese Option aktiviert ist, werden die Daten der Briefe nicht an das Druckzentrum übermittelt |
| Testmail                     | Ist der Testmodus aktiviert, erhält diese E-Mail-Adresse eine Benachrichtigung über den Versand.   |
| E-POST Sperrbereich anzeigen | Zeigt den von der Deutschen Post geforderten Sperrbereich auf Testbriefen an                       |

### Standardeinstellungen einrichten
Neben der Einrichtung der API, können hier auch die Standards für den Versand von Briefen eingestellt werden. Dafür stehen Ihnen folgende Optionen zur Verfügung:

| Feld         | Beschreibung                                                                                                                                   |
|--------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| Farbauswahl  | Hier wählen Sie aus, ob der Brief farbig oder s/w gedruckt wird                                                                                |
| Deckblatt    | Briefe mit Deckblatt versenden stellt sicher, dass der Brief nicht die Bereiche überschreitet, welche die Deutsche Post für den Druck benötigt |
| Duplex       | Ermöglicht, dass Briefe als Duplex versendet werden                                                                                            |
| Einschreiben | Hier können Sie die verschiedenen Möglichkeiten für Einschreibens einrichten                                                                   |

Neben diesen Einstellungen für den Versand, können Sie mit X noch einstellen, ob vor dem Versand ein zusätzlicher Dialog geöffnet wird in dem nochmals die gesetzten Standardeinstellungen für den Versand individuell angepasst werden können. Ist der Haken nicht gesetzt, werden alle Briefe mit den hier hinterlegten Einstellungen versendet.


***Die Connector 365 E-POST App, setzt auf die E-POSTBUSINESS API, einen Service der Deutschen Post.**



