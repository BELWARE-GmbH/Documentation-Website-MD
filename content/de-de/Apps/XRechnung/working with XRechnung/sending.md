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

|![](images/XRechnung/XRechnungScreenshot3.PNG)|
|-|
 
**„Drucken/Senden“ -> „Als XRechnung senden“**

Es öffnet sich anschließend das standardmäßige E-Mail-Fenster mit kleineren Anpassungen für den XRechnung-Versand.

|![](images/XRechnung/XRechnungScreenshot4.PNG)|
|-|

Im Dialog lassen sich der Absender, der Empfänger, der Betreff sowie die Kundenreferenz einsehen und anpassen.
Der Inhalt der Mail sowie weitere Anhänge können ebenfalls eingesehen und verändert werden.
Mehr zum Thema **Anhänge** finden Sie [hier](de-de/apps/xrechnung/working-with-xrechnung/attachments).

Wenn Sie die gewünschten Änderungen vorgenommen haben, können Sie den Versand über **E-Mail senden** auslösen.
Dabei wird eine XML-Datei erzeugt und je nach [Einrichtung](/de-de/apps/xrechnung/first-steps/setup/base-setup/) auf korrekten Syntax validiert, bevor es dann über den herkömmlichen E-Mail-Weg versandt wird.
Sollte das Validieren von XRechnungen aktiviert und eine beim XRechnung-Versand erzeugte XML-Datei fehlerhaft validiert worden sein,
so wird der Mail-Versand abgebrochen. Sie erhalten zusätzlich einen Prüfbericht, indem die Gründe für das Ablehnen der entsprechenden XRechnung protokolliert sind. Mehr Informationen zum Thema **Prüfbericht** erhalten Sie [hier](/de-de/apps/xrechnung/working-with-xrechnung/negative-xrechnung/).

### Nach dem Versand

Falls die Prüfung des Dokuments erfolgreich war, so wird die Rechnung versendet.
Nach dem Absenden erhält der Empfänger eine **„xml“-Datei**. Diese ist die zugehörige Rechnung im **„XRechnung“**-Format.

|![](images/XRechnung/xrechnungemail.png)|
|-|