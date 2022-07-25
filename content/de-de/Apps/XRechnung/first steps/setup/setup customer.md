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

Die Einstellungen, um Belege im XRechnung-Format senden zu können, werden am jeweiligen Debitor vorgenommen. Unter **„Navigieren“ - „Dokumentlayouts“** des jeweiligen Debitors.

Wenn Sie die Dokumentlayouts öffnen stehen Ihnen nun folgende neue Felder zur Verfügung:
- **Leitweg-ID** 
- **Beleg als Anhang hinzufügen**

![](images/XRechnung/xr_doc_layout.png)

In das Feld **Leitweg-ID** wird die Leitweg-ID des Debitors eingetragen. Diese ist notwendig, um einen Rechnungsempfänger eindeutig identifizieren zu können. Dieses Feld unterliegt einer Syntax-Prüfung und erlaubt nur gültige Leitweg-IDs

***Hinweis: Die Leitweg-ID kann auch im E-Mail-Dialog gesetzt werden, das heißt sie muss nicht zwingend in den Dokumentenlayouts gesetzt werden.***


Im Feld **„Beleg als Anhang hinzufügen“** haben Sie 3 Auswahlmöglichkeiten, welche bestimmen wie mit dem Originalbeleg und ggf. Anhängen umgegangen wird.

![](images/XRechnung/xrechnungbeleganhang.PNG)

**Nein** - Der Originalbeleg wird nicht zusätzlich mitversendet, es wird nur die XML der XRechnung versendet.

**Eingebettet**- Der Originalbeleg wird mitversendet, wird aber in die XML der XRechnung eingebettet. Weitere Anhänge werden ebenfalls in die XML-Eingebettet. Diese können später maschinell ausgelesen werden.

**PDF** - Der Originalbeleg wird zusätzlich zu der XML der XRechnung als PDF angehangen. Weitere Anhänge werden ebenfalls wie gewohnt angehängt.

***Hinweis: Diese Einstellung lässt sich nicht im Mail-Dialog anpassen. Sollte eine besondere Einstellung gewünscht sein, so
muss diese in den Dokumentenlayouts gesetzt werden.***

