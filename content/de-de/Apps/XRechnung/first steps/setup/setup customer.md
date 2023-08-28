---
title: "Debitor"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
# Einrichtung

## Debitor

![](images/XRechnung/XRechnungScreenshot1.png)

Die Debitorspezifischen Einstellungen für das Versenden von XRechnungen werden in den **Dokumentlayouts** des jeweiligen Debitors vorgenommen.

Wenn Sie die Dokumentlayouts öffnen stehen Ihnen nach Installation der **Connector 365 XRechnung** App folgende weitere Felder zur Verfügung:
- **Kundenreferenz** 
- **Beleg als Anhang hinzufügen**

![](images/XRechnung/xr_doc_layout.png)

In das Feld **Kundenreferenz** wird die Kennung des Empfängers, bei einem öffentlichen Auftraggerber die Leitweg-ID, eingetragen. Diese ist notwendig, um einen Rechnungsempfänger eindeutig identifizieren zu können.

{{< notice info Hinweis >}}
Die Kundenreferenz kann auch im E-Mail-Dialog gesetzt werden, das heißt sie muss nicht zwingend in den Dokumentlayouts gesetzt werden.
{{< /notice >}}

<br>

Im Feld **Beleg als Anhang hinzufügen** haben Sie drei Auswahlmöglichkeiten, welche bestimmen wie mit dem Originalbeleg und ggf. Anhängen umgegangen wird.

![](images/XRechnung/xrechnungbeleganhang.PNG)

**Nein** - Der Originalbeleg wird nicht zusätzlich mitversendet, es wird nur die XML der XRechnung versendet.

**Eingebettet**- Der Originalbeleg wird mitversendet, wird aber in die XML der XRechnung eingebettet. Weitere Anhänge werden ebenfalls in die XML-Eingebettet. Diese können später maschinell ausgelesen werden.

**PDF** - Der Originalbeleg wird zusätzlich zu der XML der XRechnung als PDF angehangen. Weitere Anhänge werden ebenfalls wie gewohnt angehängt.

Mehr zum Thema Anhänge finden Sie [hier](de-de/apps/xrechnung/working-with-xrechnung/attachments).

