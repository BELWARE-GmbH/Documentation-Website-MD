---
title: "Versand"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Arbeiten mit XRechnung

### Versand

Wenn die Einrichtung abgeschlossen wurde, so können Sie Rechnungen einfach per E-Mail senden. Öffnen Sie also Ihre gebuchten Verkaufsrechnungen und wählen Sie die zu versendende Rechnung aus.

![](images/XRechnung/XRechnungScreenshot3.PNG)
 
**„Drucken/Senden“ -> „Als XRechnung senden“**

Es öffnet sich ein neuer Dialog, in dem Sie vor dem Versenden noch Anpassungen vornehmen können.

![](images/XRechnung/XRechnungScreenshot4.PNG)

Im Dialog lassen sich der Absender, der Empfänger, der Betreff und auch nochmal die Leitweg-ID einsehen aber auch anpassen.
Der Inhalt der Mail kann angepasst werden und die aktuellen Anhänge sind sichtbar.

Wenn Sie noch weitere Anhänge haben, welche Sie mitversenden möchten, dann können Sie diese über das Feld **„Datei anhängen“** Ihrer Mail hinzufügen.

{{< notice info "Hinweis" >}}
 _Für den Fall, dass Sie in den Dokumentenlayouts eine einbetten der Anhänge angewählt haben, so werden diese ebenfalls in die XML eingebettet und lassen sich anschließend nur noch maschinell auslesen. Dabei sollte man darauf achten, welche Dateitypen der Empfänger akzeptiert._
{{< /notice >}}
#
Wenn Sie die gewünschten Änderungen vorgenommen haben, können Sie den Versand über **„E-Mail senden“** auslösen. Im Hintergrund wird nun noch eine Prüfung auf das Schema der XRechnung vorgenommen.

### Nach dem Versand

Falls die Prüfung des Dokumentes erfolgreich war, so wird die Rechnung versendet.

Nach dem Absenden erhält der Empfänger eine **„xml“-Datei**. Diese ist die zugehörige Rechnung im **„XRechnung“**-Format.

![](images/XRechnung/xrechnungemail.png)