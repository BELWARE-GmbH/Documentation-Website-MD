---
title: "Berichtsauswahl"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Einrichtung

### Berichtsauswahl

Öffnen Sie mit Hilfe der Suchfunktion die gewünschte Berichtsauswahl - z.B. die für den Verkauf. Wählen Sie nun den gewünschten Bericht aus, für unser Beispiel verwenden wir Rechnungen, grundsätzlich werden aber Berichte aus dem Bereichen Verkauf, Einkauf & Mahnung unterstützt.

![](images/apps/subjectreportselectionde.PNG)

in der Berichtsauswahl finden Sie das neue Feld **"E-Mail Betreff"**, dieses können Sie nutzen um Ihren Betreff zu definieren. Dieser ist frei definierbar, jedoch statisch.

Damit Sie einen dynamischen Betreff setzen können, müssen Sie zuvor Platzhalter festlegen. Dies können Sie tun in dem Sie neben dem Textfeld für den E-Mail Betreff auf die **[...]**-Schaltfläche klicken.

![](images/apps/subjectplaceholderemptyde.PNG)

#### Platzhalter definieren
Es öffnet sich nun das Fenster **"E-Mail-Betreff-Platzhalter"**, hier können Sie nun die Möglichkeit Ihre Platzhalter zu definieren. Ihnen stehen zwei Felder zur Verfügung:

**Platzhalter** - Hier definieren Sie wie Ihr Platzhalter aussehen soll
**Definition** - Diseses Feld definiert, auf welches Feld sich ihr zuvor eingegebener Platzhalter bezieht.

**Anlegen eines neuen Platzhalters**
Geben Sie zunächst in das Feld **Platzhalter** den gewünschten Platzhalter ein. Wir empfehlen hier Platzhalter zu nutzen, welche nicht versehentlich im Betreff stehen könnten, wenn Sie beispielsweise den Platzhalter **Rech** für die Rechnungsnummer definieren und im Betreff das Wort **Rechnung** steht, würde der **Rech**-Teil des Wortes im Betreff ersetzt. Nutzen Sie am besten eine Kombination aus Sonderzeichen und Zahlen oder passen Sie Platzhalter so an, dass Sie nicht versehentlich in Worten vorkommen.

Nun müssen Sie noch das Feld definieren, auf dass sich der Platzhalter bezieht. Hier stehen Ihnen alle  jeweiligen Felder aus dem Bericht in dem Sie sich gerade befinden zur Verfügung.

Wiederholen Sie diesen Prozess für alle gewünschten Felder/Platzhalter die Sie in Ihrem Betreff verwenden möchten.

![](images/apps/subjectplaceholderfilledde.PNG)

#### Beispiel für einen Betreff mit Platzhaltern
Nachdem Sie nun Ihre Platzhalter definiert haben, können Sie den Betreff mit Platzhaltern definieren. Schließen Sie die Einrichtung für die Platzhalter und klicken Sie erneut in das **"E-Mail Betreff"**-Feld. Für unser Beispiel haben wir folgende Platzhalter für eine Rechnung definiert.

- **%1** - die Rechnungsnummer
- **%2** - Der Empfängername
- **%3** - Das Fälligkeitsdatum

Damit könnten wir nun Beispielsweise, diesen Betreff aufbauen: Unsere Rechnung **%1** für **%2** - Fällig **%3**

![](images/apps/subjectreportselectionfillde.PNG)

wie der Betreff dann in Verwendung aussieht, erfahren Sie im nächsten [Schritt](de-de/apps/mailsubject/working-with-mail-subject-plus/maildialogue/).


