---
title: "Beleg Standardanhänge"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 4
---
### Arbeiten mit Mail Attachments Plus

Wenn Sie alle Ihre gewünschten Anhänge über das Menü hinzugefügt haben, können Sie mit dem Versand starten. Falls Sie dies noch nicht unternommen haben, können Sie im Bereich **"Erste Schritte"** die Einrichtung der [Debitor Standardanhänge](/de-de/apps/mail-attachments-plus/first-steps/setup/defaults-document/) finden.

Für das Beispiel haben wir die Anhänge für einen Beleg, wie folgt eingerichtet. Als Beleganhang haben wir eine Statusmeldung ***"Status_2102"*** angehängt und eine Anleitung ***"Anleitung_1928-S_AMSTERDAM_Lampe"*** für den Artikel als Belegzeilenanhang hinterlegt.

![](images/apps/attachmentdocumentsetup.PNG)

Zudem wurde für diesen Debitor in den Dokumentenlayouts hinterlegt, dass dieser keine Standardanhänge aus der Berichtsauswahl angehängt bekommt. Jedoch sind in den Dokumentenlayouts des Debitors spezifische Anhänge hinterlegt worden: ***"AGB_Adatum"*** und ***"Hinweis_Adatum"***

{{< notice info "Hinweis" >}}
 _Sollten Sie eine Business Central Version einsetzen, in der die Mail Experience noch nicht zur Verfügung steht, sieht der Ablauf ein wenig anders aus._
{{< /notice >}}
#

#### Mail mit Standardanhängen pro Beleg
Öffnen Sie dazu einfach den Bericht, für den Sie zuvor Ihre Anhänge eingerichtet haben und klicken Sie anschließend auf **"Drucken/Senden"** und die reguläre **"E-Mail"** Funktion.

Es öffnet sich die Standard Microsoft Mail Experience. Wenn Sie zum Bereich Anhänge herunterscrollen, werden Sie die zuvor eingerichteten Anhänge finden.

|![](images/apps/mail-attachments-plus/de/attachmentdocumentdialog.png)
|-|

{{< notice info "Farbcode" >}}
 <p style="text-indent:30px; color: red">Beleganhang "Status_2102"</p>
<p style="text-indent:30px; color: black">Anhänge aus den Dokumentlayouts "AGB_Adatum" und "Hinweis_Adatum"</p>
<p style="text-indent:30px; color: orange">Belegzeilenanhang "Anleitung_1928-S_AMSTERDAM_Lampe"</p> 
{{< /notice >}}
</p>

Hier gilt, dass die Standardanhänge aus der Berichtsauswahl nach Sprachcode und ebenso wie die Anhänge aus den Dokumentenlayouts zeitgesteuert sind. Die Beleganhänge, sowie Belegzeilenanhänge können nicht auf einen bestimmten Zeitraum beschränkt werden, da hier kein Datumsbereich zur Auswahl steht.

Sollte einer der Anhänge nicht passen, können Sie diesen wie gewohnt über die 3 Punkte und **"löschen"** entfernen.

Das Nutzen der Mail Attachments Plus App verhindert nicht, die Anhangsfunktionalitäten des Standard zu nutzen. Sie können weiterhin über die Menüleiste unter **"Datei hinzufügen"** weitere Anhänge hinzufügen.

Wenn Sie alle Änderungen an Ihren Anhängen vorgenommen haben, können Sie Ihre Mail wie gewohnt mit einem Klick auf **"E-Mail senden"** absenden.

|![](images/apps/mail-attachments-plus/de/attachdocumentmail.png)
|-|

{{< notice info "Farbcode" >}}
 <p style="text-indent:30px; color: red">Beleganhang "Status_2102"</p>
<p style="text-indent:30px; color: black">Anhänge aus den Dokumentlayouts "AGB_Adatum" und "Hinweis_Adatum"</p>
<p style="text-indent:30px; color: orange">Belegzeilenanhang "Anleitung_1928-S_AMSTERDAM_Lampe"</p> 
{{< /notice >}}
</p>