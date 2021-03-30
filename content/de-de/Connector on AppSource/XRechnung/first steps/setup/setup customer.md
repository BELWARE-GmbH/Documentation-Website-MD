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

Die Einstellungen, um Rechnungen und Gutschriften im XRechnung-Format senden zu können, werden am jeweiligen Debitor vorgenommen. Unter **„Navigieren“ - „Dokumentenlayouts“** des jeweiligen Debitors vornehmen.

Im Dokumentenlayout stehen Ihnen nun neue Felder zur Verfügung.
**„XRechnung“, „Leitweg-ID“ und „Beleg als Anhang hinzufügen“**

![](images/XRechnung/XRechnungScreenshot2.PNG)

In das Feld **„XRechnung“** setzen Sie ein Häkchen, um die Funktion zu aktivieren, dass Rechnungen/Gutschriften für diesen Debitor als XRechnung versendet werden sollen.
 
In das Feld **„Leitweg-ID“** wird die Leitweg-ID des Debitors eingetragen. Diese ist notwendig, um einen Rechnungsempfänger eindeutig identifizieren zu können. Dieses Feld unterliegt einer Syntax-Prüfung und erlaubt nur gültige Leitweg-IDs

Im Feld **„Beleg als Anhang hinzufügen“** haben Sie 3 Auswahlmöglichkeiten, welche bestimmen wie mit dem Originalbeleg und ggf. Anhängen umgegangen wird.

![](images/XRechnung/xrechnungbeleganhang.PNG)

**Nein** - Der Originalbeleg wird nicht zusätzlich mitversendet, es wird nur die XML der XRechnung versendet. Reguläre Anhänge werden wie gewohnt versendet.

**Eingebettet**- Der Originalbeleg wird mitversendet, wird aber in die XML der XRechnung eingebettet. Weitere Anhänge werden ebenfalls in die XML-Eingebettet. Diese können später maschinell ausgelesen werden.

**PDF** - Der Originalbeleg wird zusätzlich zu der XML der XRechnung als PDF angehangen. Weitere Anhänge werden ebenfalls wie gewohnt angehängt.

Ist das Häkchen für XRechnung gesetzt, eine korrekte Leitweg-ID hinterlegt, die gewünschte Anhangs-Option gewählt und alle nötigen Stammdaten können Rechnungen/Gutschriften im XRechnung-Format gesendet werden.