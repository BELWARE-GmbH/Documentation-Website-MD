---
title: "Debitor"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Einrichtung

### Debitor

![](images/XRechnung/XRechnungScreenshot1.png)

Um Rechnungen im XRechnung-Format senden zu können, müssen Sie Einstellungen unter den **„Dokumentenlayouts“** des jeweiligen Debitors vornehmen.

Diese finden Sie auf der Seite des Debitors unter: 
**„Navigieren“ -> „Dokumentenlayouts“**

Nach Installation der App befinden sich drei neue Spalten namens **„XRechnung“, „Leitweg-ID“ und „Beleg als Anhang hinzufügen“** auf der Seite.

![](images/XRechnung/XRechnungScreenshot2.PNG)

In das Feld **„XRechnung“** setzen Sie ein Häkchen, um zu signalisieren, dass Rechnungen für diesen Debitor als XRechnung versendet werden sollen. 
 
In das Feld **„Leitweg-ID“** wird die Leitweg-ID des Debitors eingetragen. Diese ist notwendig, um einen Rechnungsempfänger eindeutig identifizieren zu können. Dieses Feld unterliegt einer Syntax-Prüfung und erlaubt nur gültige Leitweg-IDs

Im Feld **„Beleg als Anhang hinzufügen“** haben Sie 3 Auswahlmöglichkeiten, welche bestimmen wie mit dem Originalbeleg und ggf. Anhängen umgegangen wird.

**Nein** - Der Originalbeleg wird _nicht_ zusätzlich mitversendet, es wird nur die XML der XRechnung versendet. Reguläre Anhänge werden wie gewohnt versendet.

**Eingebettet**- Der Originalbeleg wird mitversendet, wird aber in die XML der XRechnung eingebettet. Weitere Anhänge werden ebenfalls in die XML-Eingebettet. Diese können später maschinell ausgelesen werden.

**PDF** - Der Originalbeleg wird zusätzlich zu der XML der XRechnung als PDF angehangen. Weitere Anhänge werden ebenfalls wie gewohnt angehängt.

Ist das Häkchen für XRechnung gesetzt, eine korrekte Leitweg-ID hinterlegt und die gewünschte Anhangs-Option gewählt, können Rechnungen im XRechnung-Format gesendet werden.