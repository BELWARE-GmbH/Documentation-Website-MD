---
title: "Einrichtung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Erste Schritte

### Einrichtung
Über die Suche unter **"Connector 365 Setup"** können Sie die Einrichtung für die E-POST API finden, hier setzen Sie alle nötigen Informationen um sicherzustellen, dass die APP ohne Probleme funktioniert.

![](images/apps/epostsetup.PNG)

{{< notice info "Hinweis" >}}
 _Während der Testmodus aktiviert ist, werden keine Rechnungen versendet. Stattdessen erhält die zuvor angegebene Testmail eine Benachrichtigung_
{{< /notice >}}
#
#### Passwort setzen
Um ein Passwort für die APP zu setzen, sollten Sie zuerst sicherstellen, dass die Einrichtung vollständig (bis auf das Geheimnis/Passwort) ausgefüllt ist. Anschließend müssen Sie auf **"Passwort setzen"** in der Einrichtung klicken. Es öffnet sich nun ein neuer Dialog und gleichzeitig erhält der Admin der bei der E-Post Registrierung angegeben wurde eine SMS mit einem PIN.

Geben Sie den PIN in das entsprechende Feld ein und bestätigen Sie den Dialog mit OK. Das Passwort ist nun gesetzt und es wird automatisch ein Geheimnis generiert.

| Feld                         | Beschreibung                                                                                       |
|------------------------------|----------------------------------------------------------------------------------------------------|
| API EKP                      | Dies ist Ihre Kundennummer die Sie von der Deutschen Post erhalten haben                           |
| API Geheimnis                | Das Geheimnis wird automatisch erstellt, nachdem Sie Ihr Passwort gesetzt haben                    |
| API Passwort                 | Hier steht Ihr verschlüsseltes Passwort                                                            |
| Datei in Jobliste speichern  | Legt fest ob versendete Dateien in der Jobliste archiviert werden                                  |
| Testmodus                    | Wenn diese Option aktiviert ist, werden die Daten der Briefe nicht an das Druckzentrum übermittelt |
| Testmail                     | Ist der Testmodus aktiviert, erhält diese E-Mail-Adresse eine Benachrichtigung über den Versand.   |
| E-Post Sperrbereich anzeigen | Zeigt den von der Deutschen Post geforderten Sperrbereich auf Testbriefen an                       |




