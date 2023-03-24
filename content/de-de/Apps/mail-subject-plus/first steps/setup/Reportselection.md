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

Öffnen Sie mit Hilfe der Suchfunktion die gewünschte Berichtsauswahl - z.B. die für den Verkauf. Wählen Sie nun den gewünschten Bericht aus. Für unser Beispiel verwenden wir Rechnungen, grundsätzlich werden aber Berichte unterstützt aus den Bereichen
- Verkauf
- Einkauf
- Service
- Mahnung
- Lagerbestand
- Fertigungsauftrag
- Bankkonto

![](images/apps/Mail_Subject_Plus/de-de/app_report_selection.png)

In der Berichtsauswahl finden Sie das Feld **"Betreff"**, durch Klicken des Feldes gelangen Sie zur Seite **E-Mail-Betreff**.

![](images/apps/Mail_Subject_Plus/de-de/app_email_subject.png)


Hier können Sie nun je Sprachcode einen beliebigen Betreff definieren. Über die **[...]**-Schaltfläche im Feld **Betrefftext** gelangen Sie zur Seite **E-Mail-Betreff-Platzhalter**, welche es Ihnen zusätzlich ermöglicht dynamische Platzhalter zu definieren.

![](images/apps/Mail_Subject_Plus/de-de/app_email_subject_placeholder.png)

#### Platzhalter definieren
Es öffnet sich nun das Fenster **"E-Mail-Betreff-Platzhalter"**, hier können Sie nun die Möglichkeit Ihre Platzhalter zu definieren. Ihnen stehen zwei Felder zur Verfügung:

**Platzhalter** - Hier definieren Sie wie Ihr Platzhalter aussehen soll
**Definition** - Diseses Feld definiert, auf welches Feld sich ihr zuvor eingegebener Platzhalter bezieht.

**Anlegen eines neuen Platzhalters**
Geben Sie zunächst in das Feld **Platzhalter** den gewünschten Platzhalter ein. Wir empfehlen hier Platzhalter zu nutzen, welche nicht versehentlich im Betreff stehen könnten, wenn Sie beispielsweise den Platzhalter **Rech** für die Rechnungsnummer definieren und im Betreff das Wort **Rechnung** steht, würde der **Rech**-Teil des Wortes im Betreff ersetzt. Nutzen Sie am besten eine Kombination aus Sonderzeichen und Zahlen oder passen Sie Platzhalter so an, dass Sie nicht versehentlich in Worten vorkommen.

Nun müssen Sie noch das Feld definieren, auf dass sich der Platzhalter bezieht. Klicken Sie hierzu auf den Assist-Button des Feldes Definition. 
Es öffnet sich nun ein weiteres Fenster, in denen Ihnen alle Felder aus den Firmendaten, sowie alle Felder aus den Kopfdaten des zugrundeliegenden Berichts zur Verfügung stehen. Sie können für jeden Platzhalter eine Feldzuordnung wählen.



|![](images/apps/mail_subject_field_lookup.png)|
|-|


{{< notice info "Technischer Hinweis" >}}
Um die Tabelle für die Kopfdaten zu bestimmen, werden die Report-Metadaten des jeweiligen Berichts auf dessen Eigenschaft: **FirstDataItemTableID** untersucht. Die Standard-Berichte in Business Central hinterlegen für dieses jeweils erste Element (FirstDataItemTableId) den zugrundeliegenden Header. Beispiel: Report 1306 -> Sales Invoice Header. 
Wenn anpepasste Berichte eine andere Sturktur vorweisen, also eine andere Tabelle an erster Stelle steht, so
wird dieser auch in den Tabellenfilter übernommen, wodurch möglicherweise unbrauchbare Felder angezeigt werden, beziehungsweise wichtige Felder vermisst werden könnten.
Für solche Fälle gibt es die Möglichkeit, über einen Event-Subscriber abhängig von der Berichts-Id die richtige Zieltabelle zu setzen.
Mehr dazu finden Sie unter [Events](/de-de/apps/mail-subject-plus/working-with-mail-subject-plus/events).
{{< /notice >}}

<br>

Wiederholen Sie diesen Prozess für alle gewünschten Felder/Platzhalter die Sie in Ihrem Betreff verwenden möchten.

![](images/apps/subjectplaceholderfilledde.PNG)

#### Beispiel für einen Betreff mit Platzhaltern
Nachdem Sie nun Ihre Platzhalter definiert haben, können Sie den Betreff mit Platzhaltern definieren. Schließen Sie die Einrichtung für die Platzhalter und klicken Sie erneut in das **"E-Mail Betreff"**-Feld. Für unser Beispiel haben wir folgende Platzhalter für eine Rechnung definiert.

- **%1** - die Rechnungsnummer
- **%2** - Der Empfängername
- **%3** - Das Fälligkeitsdatum

Damit könnten wir nun Beispielsweise, diesen Betreff aufbauen: Unsere Rechnung **%1** für **%2** - Fällig **%3**

![](images/apps/subjectreportselectionfillde.PNG)

wie der Betreff dann in Verwendung aussieht, erfahren Sie im nächsten [Schritt](de-de/apps/mail-subject-plus/working-with-mail-subject-plus/maildialogue/).


