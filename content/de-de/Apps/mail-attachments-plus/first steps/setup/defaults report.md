---
title: "Bericht Standardanhänge"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Einrichtung

### Hinzufügen von Standardanhängen pro Bericht

|![](images/apps/mail-attachments-plus/de/reportselection_new.png)
|-|

Standardanhänge sind eine gute Möglichkeit, Zeit zu sparen, wenn Sie Ihren E-Mails Dateien hinzufügen. Wenn Sie den gleichen Anhang in jeder E-Mail verwenden, fügen Sie ihn einfach als Standard hinzu, und er wird automatisch an jede E-Mail angehängt.

Beginnen Sie mit dem Öffnen der Berichtsauswahl des gewünschten Berichts, in diesem Beispiel werden wir Verkäufe und Rechnungen verwenden. Wenn Sie sich nicht sicher sind, wo Sie die Berichtsauswahl finden, können Sie jederzeit die Suchfunktion von Dynamics 365 Business Central verwenden.

Wie Sie im obigen Screenshot sehen können, gibt es in diesem Fenster ein Feld für Anhänge. Der Prozess des Hinzufügens neuer Standardanhänge funktioniert wie das Hinzufügen von Anhängen zu Ihrer regulären Mail. Beginnen Sie mit einem Klick auf die 0, um den Anhangsdialog zu öffnen und fügen Sie Ihre Dateien über "Neu" und "Anhang hinzufügen" hinzu.

***Festlegen eines Anhangs pro Sprachcode***

|![](images/apps/mail-attachments-plus/de/reportselection_languagecode.png)
|-|

Im ersten Schritt definieren Sie den Sprachcode für den Sie Anhänge hinzufügen wollen. Wählen Sie dafür den entsprechenden Sprachcode aus und klicken Sie auf 0 unter Anhangszahl, um Ihre Anhänge für diese Sprache festzulegen.
<p></p>

Es öffnet sich ein neues Fenster:

|![](images/apps/mail-attachments-plus/de/reportselection_attachment_per_languagecode.png)
|-|

Über einen Klick in das Feld **Anhangsname** können Sie einen neuen Anhang hinzufügen. Es öffnet sich die Tabelle, in der sich Ihre Anhänge unserer Connector 365 Apps befinden. Bei Erstgebrauch sind hier keine Dateien vorhanden. Diese fügen Sie über die 3 Punkte über **Neu** und dann **Anhang hinzufügen** hinzu.

|![](images/apps/mail-attachments-plus/de/attach.png)
|-|

Nach dem Hinzufügen der Datei(en) können Sie über die Felder "Von Datum" und "Bis Datum" definieren, ob ein Standard-Anhang nur für eine bestimmte Zeitspanne angehängt werden soll. Dies kann z.B. verwendet werden, um Ihren Mails eine Werbung hinzuzufügen, die nur für eine bestimmte Zeitdauer gültig ist. Sollten Sie die Datumsfelder nicht bearbeiten können, müssen Sie zuerst im Menü auf "Liste bearbeiten" klicken, um danach das Datum einzustellen.

Ebenfalls haben Sie hier die Möglichkeit einzustellen ob Ihr Anhang grundsätzlich in Verwendung mit unserer Connector 365 XRechnung in die XRechnung-XML eingebettet werden soll.

|![](images/apps/mail-attachments-plus/de/xml_einbetten.png)
|-|

{{< notice info "Hinweis" >}}
 _Das für die Anlage eingestellte Datum verwendet nicht das Systemdatum zur Bestimmung des Tages, sondern das Arbeitsdatum Ihrer Business Central Umgebung._
{{< /notice >}}

### Beleganhänge & Belegzeilenanhänge pro Bericht anhängen

|![](images/apps/mail-attachments-plus/de/reportselection_new_DEU.png)
|-|

Neben dem Feld für das Hinzufügen der Standardanhänge haben Sie zwei weitere Felder mit denen Sie steuern, ob Ihre Beleganhänge für den ausgewählten Bericht standardmäßig mit angehängt werden sollen. 

{{< notice info "Hinweis" >}}
_Die im obigen Screenshot markierten Checkboxen "Beleganhänge anhängen" und "Belegezeilenanhänge anhängen" dienen nicht der Steuerung der unter Anhänge hochgeladenen Anhänge. Mit ihr wird gesteuert, ob am einzelnen Beleg oder in der Belegzeile befindliche Anhänge ebenfalls verschickt werden sollen._
{{< /notice >}}
####
Sobald die Anhänge eingestellt sind, kann eine Mail wie gewohnt versendet werden, eine Anleitung hierzu finden Sie im Bereich **"Arbeiten mit Mail Attachment Plus"** unter [Bericht Standardanhänge](de-de/apps/mail-attachments-plus/working-with-map/defaults-report/)