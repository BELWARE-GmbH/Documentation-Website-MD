---
title: "E-POSTBUSINESS API"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Einrichtung

### E-POSTBUSINESS API

Unter **Unterstütztes Setup** finden Sie einen Assistenten, der Sie Schritt für Schritt durch den Einrichtungsprozess der App und des E-POST-Kontos führt. Ansonsten können Sie dieser Dokumentation folgen.

Über die Suche unter **"Connector 365 Einrichtung"** können Sie die Einrichtung für die Connector 365 E-POST App* finden. Hier werden alle für eine korrekte Funktion notwendigen Daten eingetragen.

![](images/apps/E-POST/de-de/app_setup.png)




| Feld                         | Beschreibung                                                                                       |
|------------------------------|----------------------------------------------------------------------------------------------------|
| EKP                      | Dies ist Ihre Kundennummer die Sie von der Deutschen Post erhalten haben.                           |
| Geheimnis                | Das Geheimnis wird automatisch erstellt, nachdem Sie Ihr Passwort gesetzt haben.                    |
| Passwort                 | Hier steht Ihr verschlüsseltes Passwort.                                                            |
| Belege in Jobliste speichern  | Legt fest ob versendete Dateien in der Jobliste archiviert werden.                                  |
| Dialog anzeigen              | Gibt an ob vor Versand noch ein weiterer Dialog zum abändern/überprüfen der Optionen geöffnet wird. |
| Testmodus                    | Wenn diese Option aktiviert ist, werden die Daten der Briefe nicht an das Druckzentrum übermittelt. |
| Test-E-Mailadresse                     | Ist der Testmodus aktiviert, wird der Brief an die hier hinterlegte E-Mailadresse gesendet.    |
| Sperrfläche anzeigen         | Zeigt den von der Deutschen Post geforderten Sperrbereich auf Testbriefen an.                       |

{{< notice info "Hinweis" >}}
 _Während der Testmodus aktiviert ist, werden keine Briefe versendet._
{{< /notice >}}
#
#### Passwort setzen
Um ein Passwort für die App zu setzen, sollten Sie zuerst sicherstellen, dass die Einrichtung vollständig (bis auf das Geheimnis/Passwort) ausgefüllt ist. Anschließend müssen Sie auf **"Passwort setzen"** in der Einrichtung klicken. Es öffnet sich nun ein neuer Dialog und gleichzeitig erhält der Admin, der bei der E-POST Registrierung angegeben wurde, eine SMS mit einer PIN.

Geben Sie die PIN in das entsprechende Feld ein und bestätigen Sie den Dialog mit OK. Das Passwort ist nun gesetzt und es wird automatisch ein Geheimnis generiert.


### Standardeinstellungen einrichten
Neben der Einrichtung der API können hier auch die Standards für den Versand von Briefen eingestellt werden. Dafür stehen Ihnen folgende Optionen zur Verfügung:

| Feld         | Beschreibung                                                                                                                                   |
|--------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| Deckblatt    | Beim Versand mit Deckblatt wird eine zusätzliche Seite vor dem eigentlichen Beleg gedruckt. Diese enthält die Adressinformationen des Senders sowie Empfängers. Die Nutzung des Deckblatts stellt sicher, dass es zu keiner Sperrflächenverletzung kommt. |
| Farbe  | Hier wählen Sie aus, ob der Brief farbig oder s/w gedruckt wird.                                                                                |
| Duplex       | Ermöglicht, dass Briefe als Duplex-Druck versendet. werden                                                                                            |
| Einschreiben | Hier können Sie die verschiedenen Möglichkeiten für Einschreiben einrichten.                                                                   |

***Die Connector 365 E-POST App, setzt auf die E-POSTBUSINESS API, einen Service der Deutschen Post.**


## Kopieren von Einrichtungsdaten

Falls Sie ein E-Post API Konto für mehrere Mandanten verwenden wollen, bietet die **Connector 365 E-Post** App eine Funktion an, um Einrichtungsdaten von beliebigen Mandanten zu kopieren. 
Voraussetzung ist, dass Sie einen Mandanten erfolgreich für die Nutzung der E-Post-API eingerichtet haben.

Im Folgenden erfahren Sie, wie Sie die E-Post-Einrichtungsdaten von einem Mandanten zu einem anderen Mandanten kopieren können.

### Wie Sie E-Post-Einrichungsdatent kopieren können

Sofern Sie einen Mandaten erfolgreich für die Nutzung von E-Post API eingerichtet haben, navigieren Sie zu einem Mandanten, für den Sie 
die Zugangsdaten von einem anderen Mandanten kopieren möchten.

Anschließend navigieren Sie zu der **Connector 365 Einrichtung**:

|![](images/apps/E-POST/de-de/search_con365_setup.png)|
|-|

Anschließend aktivieren Sie die Aktion **Zugangsdaten aus Mandanten kopieren**:

|![](images/apps/E-POST/de-de/action-copy-company.png)|
|-|

Es öffnet sich nun folgendes Fenster:

|![](images/apps/E-POST/de-de/dialog-copy-company.png)|
|-|

Folgende Felder werden dabei angezeigt:

| Feld | Bedeutung |
| - | - |
| Name | Der Name des Mandanten |
| Anzeigename | Der Anzeigename des Mandanten, der auf der Oberfläche angezeigt wird |
| Testunternehmen | Gibt an, dass das Unternehmen nur zu Testzwecken dient und kein Abonnement gekauft wurde. |
| Unterstützte Unternehmenseinrichtung aktivieren | Legt fest, ob ein Nutzer beim Einrichten eines Unternehmens unterstützt wird. |
| Einrichtungsstatus | Gibt den Einrichtungsstatus des Unternehmens an. |

{{< notice info Hinweis>}}
Die Bearbeitung von Feldern auf dieser Seite ist nicht vorgesehen. Diese stammt vom Microsoft Standard und dient rein der Auswahl von Mandanten.
{{< /notice >}}

<br></br>
Wählen Sie nun einen Mandanten aus, von dem Sie E-Post-Einrichtungsdaten auf den aktuell genutzten Mandanten kopieren möchten.
Bestätigen Sie anschließend Ihre Auswahl durch Klicken von **OK**.

{{< notice warning Achtung>}}
Bitte beachten Sie, dass die Kopierfunktion nur Zugangsdaten kopiert. Die weiteren Einstellungen wie beispielsweise, ob ein Brief farbig sein soll oder nicht, sind bei Bedarf erneut zu setzen. Beachten Sie außerdem, dass die Kopierfunktion vorhandene Zugangsdaten des aktuellen Mandanten überschreibt.
{{< /notice >}}

## Ändern von Administrator-Kontaktdaten

Für die Nutzung der E-Post API ist die Angabe einer E-Mail-Adresse sowie einer Telefonnummer einer Kontaktperson verpflichtend.
Beide Kontaktdaten können bei Bedarf geändert werden. Im Folgenden erfahren Sie, wie Sie die E-Mail-Adresse oder die Telefonnummer des
Administratorkontaktes ändern können.

{{< notice warning Achtung >}}
Bitte beachten Sie, dass Sie mindestens einen Zugang zu einem der beiden Daten haben müssen, um Kontakt-Änderungen vorzunehmen.
Das heißt, um die Telefonnummer zu ändern, benötigen Sie Zugriff auf das hinterlegte E-Mail-Konto. Wenn Sie die E-Mail-Adresse ändern wollen, benötigen Sie den Zugriff auf die hinterlegte Mobilfunk-Nummer.
{{< /notice >}}

### Wie Sie die Administrator-Kontaktdaten ändern können

Als erstes, navigieren Sie zu der **Connector 365 Einrichtung**:

|![](images/apps/E-POST/de-de/search_con365_setup.png)|
|-|

Unter der Ruprik **E-Post Einrichtung**, wählen Sie die Aktion **Administratorkontakt ändern**.

|![](images/apps/E-POST/de-de/action-change-admin-contact.png)|
|-|

Beim Klicken dieser Aktion öffnet sich ein Untermenü mit folgenden Auswahlmöglichkeiten:
- **E-Mail-Adresse ändern**
- **Handy-Nr.**

|![](images/apps/E-POST/de-de/actions-change-mail-phone.png)|
|-|

#### E-Mail-Adresse ändern

Wenn Sie Ihre E-Mail-Adresse ändern möchten, klicken Sie auf die Aktion **E-Mail-Adresse** ändern.

|![](images/apps/E-POST/de-de/change-mail-address-field.png)|
|-|

Tragen Sie nun die neue E-Mail-Adresse, die Sie künftig für Ihr E-Post API Konto nutzen möchten in das Feld **Neue E-Mail** ein.
Bestätigen Sie nun, indem Sie auf die Aktion **E-Mail-Anfrage senden** klicken.

|![](images/apps/E-POST/de-de/confirm-new-mail-address.png)|
|-|

Nun wird im Hintergrund ein Prozess ausgelöst, der dafür sorgt, dass die aktuell hinterlegte Mobilfunknummer des E-Post API Kontos einen SMS Code zu Bestätigung erhält. Tragen Sie diesen in das Feld **SMS-Code** ein und bestätigen Sie durch Klicken von **E-Mail-Adresse festlegen**.

|![](images/apps/E-POST/de-de/enter-sms-code.png)|
|-|

Bei erfolgreicher Eingabe erhalten Sie eine Information über das Ändern Ihrer E-Mail-Adresse.

#### Telefonnummer ändern

Klicken Sie auf die Aktion **Handy-Nr.**, um Ihre hinterlegte Mobilfunknummer zu ändern.

|![](images/apps/E-POST/de-de/change-phone-number.png)|
|-|

Tragen Sie nun die neue Telefonnummer für Ihren Administrator-Kontakt in das Feld **Neue Handy-Nr.** ein.
Bestätigen Sie Ihre Auswahl durch Klicken der Aktion **Mobile Anfrage senden**.

|![](images/apps/E-POST/de-de/confirm-new-phone-number.png)|
|-|

Im Hintergrund wird nun eine E-Mail an die E-Mail-Adresse versandt, die aktuell im E-Post API Konto hinterlegt ist.
In dieser E-Mail befindet sich ein Code, den Sie zur Bestätigung in dem Feld **E-Mail-Code** eintragen müssen.
Bestätigen Sie anschließend durch Klicken der Schalftläche **Handy-Nr. einstellen**.

|![](images/apps/E-POST/de-de/enter-email-code.png)|
|-|

Bei erfolgreicher Anfrage erhalten Sie eine Information über die geänderten Telefon-Daten.
