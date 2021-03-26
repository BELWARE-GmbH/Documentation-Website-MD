---
title: "Erste Schritte"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
![](images/XRechnung/Appsource_Banner_XRechnung.png)

### Einleitung
Ab dem 27.11.2020 müssen Lieferanten öffentlicher Auftraggeber Rechnungen in dem sogenannten „XRechnung“-Format versenden. Bei diesem Format handelt es sich um ein XML-basiertes Datenmodell, das aktuell als Standard für elektronische Rechnungen etabliert wird.

Die App XRechnung für Microsoft Dynamics 365 Business Central ist in der Lage, solche elektronischen Rechnungen im XRechnung-Standard zu erstellen und zu versenden. 

### Einrichtung

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

### Wichtige Einrichtungspunkte

Da eine XRechnung immer einem bestimmten Schema entsprechen muss, kann es vorkommen, dass die erste erzeugte XRechnung fehlerhaft ist.

Um welche Fehler es sich genau handelt, lässt sich aus dem Prüfbericht und der offiziellen [Codelist](https://docs.peppol.eu/poacc/billing/3.0/codelist/) erkennen. Gerne unterstützen wir Sie bei dem Prozess Ihre XRechnungen zu bereinigen.

Nun noch drei Punkte, welche vor Nutzung der XRechnung schon einmal geprüft werden sollten. Da es sich hier um eine häufige Fehlerquelle handelt:

#### MwSt.-Schema überprüfen

Sie sollten die MwSt.-Schema Codes für die jeweiligen Länder überprüfen. Für die XRechnung ist dies in Normalfall nur Deutschland.

Diese lassen sich unter **“Länder/Regionen”** in Dynamics NAV anpassen, am schnellsten Finden Sie diesen Punkt über die Suchfunktion.

Dort ändern Sie nun das Feld **“MwSt.-Schema”** in den Code für das entsprechende Land. Der Code für **Deutschland** lautet **9930**, alle weiteren Codes finden Sie [hier](https://docs.peppol.eu/poacc/billing/3.0/codelist/eas/).

![](images/XRechnung/erste_schritte/xrechnungmwst.PNG)

#### Standardcodes für Einheiten überprüfen

Ein weiterer Punkt der sich zu überprüfen lohnt sind Einheitencodes. Diese müssen, um PEPPOL-konform zu sein eine spezielle Bezeichnung haben, damit diese akzeptiert werden.

Die Liste mit Ihrem Einheitencodes können Sie am schnellsten über die Suchfunktion erreichen in dem Sie einfach nach **„Einheiten“** suchen.

Anschließend sollten Sie das Feld **“Internationaler Standardcode”** anhand der UN/ECE Recommendation [20](https://docs.peppol.eu/poacc/billing/3.0/codelist/UNECERec20/) bzw. [21](https://docs.peppol.eu/poacc/billing/3.0/codelist/UNECERec21/) anpassen.

![](images/XRechnung/erste_schritte/xrechnungeinheiten.PNG)

#### Überprüfen der Steuerkategorie

Zuletzt lohnt es sich auch die Steuerkategorie anzusehen, diese ist in der **MwSt.-Buchungsmatrix** zu finden, diese lässt sich auch wieder am schnellsten über die Suchfunktion aufrufen.

Hier sollte nun das Feld “Steuerkategorie” mit der jeweiligen Bezeichnung gefüllt werden, diese können Sie [hier](https://docs.peppol.eu/poacc/billing/3.0/codelist/UNCL5305/) finden. In den meisten Fällen werden Sie nur E S und Z benötigen.

![](images/XRechnung/erste_schritte/xrechnungmatrix.PNG)
