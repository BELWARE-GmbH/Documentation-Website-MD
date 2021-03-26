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

If the setup has been completed, you can easily send invoices by email. Open your posted sales invoices and select the invoice you want to send.
 
**„Print/Send“ -> „Send as XRechnung“**

A new dialog opens where you can make adjustments before sending.

![](images/XRechnung/XRechnungScreenshot4.PNG)

In the dialog, the sender, the recipient, the subject and also again the Ident ID can be viewed but also adjusted.
The content of the mail can be customized and the current attachments are visible.
If you have other attachments that you want to send, then you can add more attachments via the **"Attach file"** field in the menu bar.

**Note:** _If you have selected embedded attachments in the document layouts, these will also be embedded in the XML and can then only be read by machine. You have to pay attention to which attachments the recipient accepts._

Wenn Sie die gewünschten Änderungen vorgenommen haben, können Sie den Versand über **„E-Mail senden“** auslösen. Im Hintergrund wird nun noch eine Prüfung auf das Schema der XRechnung

#### Negative XRechnungen

Für den Fall, dass eine XRechnung nicht dem geforderten Schema entspricht, kommt es zu einer Fehlermeldung, wird diese bestätigt öffnet sich der Prüfbericht für die XRechnung.

![](images/XRechnung/xrechnungbericht.png)

Dort lässt sich einsehen, welche Punkte nicht zum geforderten Schema passen. Korrigieren Sie diese Punkte und versenden Sie die XRechnung erneut.

Es gibt viele Stellen, die dazu führen, dass eine XRechnung nicht dem Schema entspricht. Für die häufigsten haben wir eine Auflisten und Anleitung unter [Erste Schritte](de-de/documentation/connector-on-appsource/xrechnung/erste-schritte)

#### Nach dem Versand

Falls die Prüfung des Dokumentes erfolgreich war, so wird die Rechnung versendet.

Nach dem Absenden erhält der Empfänger unter anderem eine **„xml“-Datei.** 
Diese ist die zugehörige Rechnung im **„XRechnung“**-Format.

![](images/XRechnung/XRechnungScreenshot5.PNG)

### Status
In Ihrem Rollencenter können Sie zwei neue Kästen finden. Dort lässt sich der Status der versendeten und fehlerhaften XRechnungen nachverfolgen 

![](images/XRechnung/xrechnungstatus.png)

#### XRechnung

![](images/XRechnung/xrechnunguebersicht.png)

Hier werden alle erfolgreich versendeten XRechnung abgebildet – Was wurde wann, an wen versendet.
Sie haben hier auch die Möglichkeit schon versendete XRechnungen erneut zu versenden.

#### XRechnung Entwurf

![](images/XRechnung/xrechnungentwuerfe.png)

Hier werden XRechnungen abgebildet, welche durch die Prüfung durchgefallen sind und nicht als XRechnung akzeptiert werden. Dies kann unterschiedliche Gründe haben – Welche genau, können Sie herausfinden indem Sie den Prüfbericht öffnen. 
