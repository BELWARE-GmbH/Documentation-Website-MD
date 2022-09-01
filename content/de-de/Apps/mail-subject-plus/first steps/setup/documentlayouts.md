---
title: "Dokumentenlayouts"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Einrichtung

### Dokumentenlayouts
Neben der Berichtsauswahl, können Sie auch individuell pro Debitor einen Betreff festlegen - diese Einstellung überschreibt dann die Einstellung aus der Berichtsauswahl, falls vorhanden.

![](images/apps/subjectcustomerde.PNG)

Navigieren Sie zunächst zu dem gewünschten Debitor bzw. Kreditor. Dort angekommen, klicken Sie in der Menüleiste auf **"Navigieren"** -> **"Dokumentenlayouts"**. Bevor Sie den Betreff einrichten, müssen Sie zunächst die Verwendung bzw. den Bericht einrichten. Sobald dies vorgenommen wurde können Sie über das Feld **"E-Mail Betreff"** Ihren gewünschten Betreff festlegen.

![](images/apps/subjectdoclayoutde.PNG)

Auch in den Dokumentenlayouts müssen Sie zunächst Platzhalter einrichten, wenn Sie einen dynamischen Betreff wünschen. Dies können Sie tun in dem Sie neben dem Textfeld für den E-Mail Betreff auf die **[...]**-Schaltfläche klicken.

#### Platzhalter definieren
Es öffnet sich nun das Fenster **"E-Mail-Betreff-Platzhalter"**, hier können Sie nun die Möglichkeit Ihre Platzhalter zu definieren. Ihnen stehen zwei Felder zur Verfügung:

**Platzhalter** - Hier definieren Sie wie Ihr Platzhalter aussehen soll
**Definition** - Diseses Feld definiert, auf welches Feld sich ihr zuvor eingegebener Platzhalter bezieht.

![](images/apps/subjectdocplacede.PNG)

**Anlegen eines neuen Platzhalters**
Geben Sie zunächst in das Feld **Platzhalter** den gewünschten Platzhalter ein. Wir empfehlen hier Platzhalter zu nutzen, welche nicht versehentlich im Betreff stehen könnten, wenn Sie beispielsweise den Platzhalter **Rech** für die Rechnungsnummer definieren und im Betreff das Wort **Rechnung** steht, würde der **Rech**-Teil des Wortes im Betreff ersetzt. Nutzen Sie am besten eine Kombination aus Sonderzeichen und Zahlen oder passen Sie Platzhalter so an, dass Sie nicht versehentlich in Worten vorkommen.

Nun müssen Sie noch das Feld definieren, auf dass sich der Platzhalter bezieht. Hier stehen Ihnen alle  jeweiligen Felder aus dem Bericht in dem Sie sich gerade befinden zur Verfügung.

Wiederholen Sie diesen Prozess für alle gewünschten Felder/Platzhalter die Sie in Ihrem Betreff verwenden möchten.

![](images/apps/subjectdocplacefillde.PNG)

#### Beispiel für einen Betreff mit Platzhaltern
Nachdem Sie nun Ihre Platzhalter definiert haben, können Sie den Betreff mit Platzhaltern definieren. Schließen Sie die Einrichtung für die Platzhalter und klicken Sie erneut in das **"E-Mail Betreff"**-Feld. Für unser Beispiel haben wir folgende Platzhalter für eine Rechnung definiert.

- **%1** - die Rechnungsnummer
- **%2** - Der Empfängername
- **%3** - Das Fälligkeitsdatum

Damit könnten wir nun Beispielsweise, diesen Betreff aufbauen: Unsere Rechnung **%1** für **%2** - Fällig **%3**

![](images/apps/subjectdoclayoutdonede.PNG)

wie der Betreff dann in Verwendung aussieht, erfahren Sie im nächsten [Schritt](de-de/apps/mail-subject-plus/working-with-mail-subject-plus/maildialogue/).