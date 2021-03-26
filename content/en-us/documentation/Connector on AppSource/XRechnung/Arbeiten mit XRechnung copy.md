---
title: "Arbeiten mit XRechnung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Einrichtung

![](images/XRechnung/XRechnungScreenshot1.png)

Um Rechnungen im XRechnung-Format senden zu können, müssen Sie Einstellungen unter den **„Dokumentenlayouts“** des jeweiligen Debitors vornehmen.

Diese finden Sie auf der Seite des Debitors unter: 
**„Navigieren“ -> „Dokumentenlayouts“**

Nach Installation der App befinden sich drei neue Spalten namens **„XRechnung“, „Leitweg-ID“ und „Beleg als Anhang hinzufügen“** auf der Seite.

![](images/XRechnung/XRechnungScreenshot2.png)

In das Feld **„XRechnung“** setzen Sie ein Häkchen, um zu signalisieren, dass Rechnungen für diesen Debitor als XRechnung versendet werden sollen. 
 
In das Feld **„Leitweg-ID“** wird die Leitweg-ID des Debitors eingetragen. Diese ist notwendig, um einen Rechnungsempfänger eindeutig identifizieren zu können. Dieses Feld unterliegt einer Syntax-Prüfung und erlaubt nur gültige Leitweg-IDs

Im Feld **„Beleg als Anhang hinzufügen“** haben Sie 3 Auswahlmöglichkeiten, welche bestimmen wie mit dem Originalbeleg und ggf. Anhängen umgegangen wird.

**Nein** - Der Originalbeleg wird *nicht* zusätzlich mitversendet, es wird nur die XML der XRechnung versendet. Reguläre Anhänge werden wie gewohnt versendet.

**Eingebettet**- Der Originalbeleg wird mitversendet, wird aber in die XML der XRechnung eingebettet. Weitere Anhänge werden ebenfalls in die XML-Eingebettet. Diese können später maschinell ausgelesen werden.

**PDF** - Der Originalbeleg wird zusätzlich zu der XML der XRechnung als PDF angehangen. Weitere Anhänge werden ebenfalls wie gewohnt angehängt.

Ist das Häkchen für XRechnung gesetzt, eine korrekte Leitweg-ID hinterlegt und die gewünschte Anhangs-Option gewählt, können Rechnungen im XRechnung-Format gesendet werden. 

### Versand

![](images/XRechnung/XRechnungScreenshot3.png)

Wenn die Einrichtung abgeschlossen wurde, so können sie Rechnungen einfach per E-Mail senden. Öffnen Sie also Ihre gebuchten Verkaufsrechnungen und wählen Sie die zu versendende Rechnung aus.
 
**„Drucken/Senden“ -> „Als XRechnung senden“**

Es öffnet sich ein neuer Dialog, in dem Sie vor dem Versenden noch Anpassungen vornehmen können.

![](images/XRechnung/XRechnungScreenshot4.png)

Im Dialog lassen sich der Absender, der Empfänger, der Betreff und auch nochmal die Leitweg-ID einsehen aber auch anpassen.
Der Inhalt der Mail kann angepasst werden und die aktuellen Anhänge sind sichtbar.
Wenn Sie noch weitere Anhänge haben, welche Sie mitversenden möchten, dann können Sie über das Feld **„Datei anhängen“** in der Menüleiste noch weitere Anhänge hinzufügen.

**Hinweis:** _Für den Fall, dass Sie in den Dokumentenlayouts eine einbetten der Anhänge angewählt haben, so werden diese ebenfalls in die XML eingebettet und lassen sich anschließend nur noch maschinell auslesen. Diese Art der Verarbeitung von Anhängen funktioniert nur bei PDFs.??????_

Wenn Sie die gewünschten Änderungen vorgenommen haben, können Sie den Versand über **„E-Mail senden“ auslösen.
### Status
In Ihrem Rollencenter können Sie zwei neue Kästen finden. Dort lässt sich der Status der versendeten und fehlerhaften XRechnungen nachverfolgen 

##### XRechnung

SCREENSHOT ÜBERSICHT XRECHNUNG

Hier werden alle erfolgreich versendeten XRechnung abgebildet – Was wurde wann, an wen versendet.
Sie haben hier auch die Möglichkeit schon versendete XRechnungen erneut zu versenden.

##### XRechnung Entwurf

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
