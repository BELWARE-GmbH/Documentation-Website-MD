---
title: "Arbeiten mit XRechnung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---
### Versand

![](images/XRechnung/XRechnungScreenshot3.PNG)

Wenn die Einrichtung abgeschlossen wurde, so können Sie Rechnungen einfach per E-Mail senden. Öffnen Sie also Ihre gebuchten Verkaufsrechnungen und wählen Sie die zu versendende Rechnung aus.
 
**„Drucken/Senden“ -> „Als XRechnung senden“**

Es öffnet sich ein neuer Dialog, in dem Sie vor dem Versenden noch Anpassungen vornehmen können.

![](images/XRechnung/XRechnungScreenshot4.PNG)

Im Dialog lassen sich der Absender, der Empfänger, der Betreff und auch nochmal die Leitweg-ID einsehen aber auch anpassen.
Der Inhalt der Mail kann angepasst werden und die aktuellen Anhänge sind sichtbar.
Wenn Sie noch weitere Anhänge haben, welche Sie mitversenden möchten, dann können Sie über das Feld **„Datei anhängen“** in der Menüleiste noch weitere Anhänge hinzufügen.

**Hinweis:** _Für den Fall, dass Sie in den Dokumentenlayouts eine einbetten der Anhänge angewählt haben, so werden diese ebenfalls in die XML eingebettet und lassen sich anschließend nur noch maschinell auslesen. Diese Art der Verarbeitung von Anhängen funktioniert nur bei PDFs.??????_

Wenn Sie die gewünschten Änderungen vorgenommen haben, können Sie den Versand über **„E-Mail senden“** auslösen. Im Hintergrund wird nun noch eine Prüfung auf das Schema der XRechnung

#### Negative XRechnungen

Für den Fall, dass eine XRechnung nicht dem geforderten Schema entspricht, kommt es zu einer Fehlermeldung, wird diese bestätigt öffnet sich der Prüfbericht für die XRechnung.

Dort lässt sich einsehen, welche Punkte nicht zum geforderten Schema passen. Korrigieren Sie diese Punkte und versenden Sie die XRechnung erneut.

Es gibt viele Stellen, die dazu führen, dass eine XRechnung nicht dem Schema entspricht. Für die häufigsten haben wir eine Auflisten und Anleitung unter [Erste Schritte](de-de/documentation/connector-on-appsource/xrechnung/erste-schritte)

#### Nach dem Versand



### Status
In Ihrem Rollencenter können Sie zwei neue Kästen finden. Dort lässt sich der Status der versendeten und fehlerhaften XRechnungen nachverfolgen 

#### XRechnung

SCREENSHOT ÜBERSICHT XRECHNUNG

Hier werden alle erfolgreich versendeten XRechnung abgebildet – Was wurde wann, an wen versendet.
Sie haben hier auch die Möglichkeit schon versendete XRechnungen erneut zu versenden.

#### XRechnung Entwurf

SCREENSHOT ÜBERSICHT XRECHNUNG ENTWURF

Hier werden XRechnungen abgebildet, welche durch die Prüfung durchgefallen sind und nicht als XRechnung akzeptiert werden. Dies kann unterschiedliche Gründe haben – Welche genau, können Sie herausfinden indem Sie den Prüfbericht öffnen. 
Eine Liste von Hauptursachen können Sie in dieser Doku finden.

![](https://belware.de/images/nicepage-images/XRechnungScreenshot4.png)

Drücken Sie „ok“ um den Prüfbericht anzeigen zu lassen:

![](https://belware.de/images/nicepage-images/XRechnungScreenshot5.png)

Aus dem Prüfbericht geht hervor, welche Angaben fehlen bzw. zu Fehlern führen. 
 

Falls die Prüfung des Dokumentes erfolgreich war, so wird die Rechnung versendet.

Nach dem Absenden erhält der Empfänger unter anderem eine „xml“-Datei. 
Diese ist die zugehörige Rechnung im „XRechnung“-Format. 

![](https://belware.de/images/nicepage-images/XRechnungScreenshot6.png)
