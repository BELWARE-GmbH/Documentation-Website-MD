---
title: "Dokumentenlayouts"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Einrichtung

### Dokumentlayouts
Neben der eher allgemeinen Einrichtung in der Berichtsauswahl besteht die Möglichkeit, für jeden Debitor festzulegen, welche Belegart mit welchem Betreff versehen werden soll. Diese Einstellung überschreibt dann die Einstellung aus der Berichtsauswahl, falls vorhanden.

![](images/apps/subjectcustomerde.PNG)

Navigieren Sie zunächst zu dem gewünschten Debitor bzw. Kreditor. Dort angekommen, klicken Sie in der Menüleiste auf **"Navigieren"** -> **"Dokumentenlayouts"**. Bevor Sie den Betreff einrichten, müssen Sie zunächst die Verwendung bzw. den Bericht einrichten. Sobald dies vorgenommen wurde können Sie über das Feld **"E-Mail Betreff"** Ihren gewünschten Betreff festlegen.

![](images/apps/subjectdoclayoutde.PNG)

Hierzu gibt es zum Einen die Option, einen statischen Betreff zu formulieren, der in alle Nachrichten zur jeweiligen Verwendung unverändert eingefügt wird.

![](images/apps/Mail_Subject_Plus/de-de/Einrichtung_Doklayouts.png)

Eine weitere Option ist die Formulierung dynamischer Betreffe, die sich durch die Nutzung von Platzhaltern an den Inhalt der einzelnen Nachricht anpassen.

![](images/apps/Mail_Subject_Plus/de-de/Einrichtung_Doklayouts_m_Platzhalter.png)

Die Definition der Platzhalter können Sie vornehmen, indem Sie im Feld **E-Mail-Betreff** auf die **[...]**-Schaltfläche am rechten Rand klicken.

#### Platzhalter definieren
Es öffnet sich nun das Fenster **"E-Mail-Betreff-Platzhalter"**.
Ihnen stehen zwei Felder zur Verfügung:

**Platzhalter** - Hier definieren Sie wie Ihr Platzhalter aussehen soll
**Definition** - Diseses Feld definiert, auf welches Feld sich ihr zuvor eingegebener Platzhalter bezieht.

![](images/apps/subjectdocplacede.PNG)

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

<br>
Wiederholen Sie diesen Prozess für alle gewünschten Felder/Platzhalter die Sie in Ihrem Betreff verwenden möchten.

![](images/apps/subjectdocplacefillde.PNG)

#### Beispiel für einen Betreff mit Platzhaltern
Nachdem Sie nun Ihre Platzhalter definiert haben, können Sie den Betreff mit Platzhaltern definieren. Schließen Sie die Einrichtung für die Platzhalter und klicken Sie erneut in das **"E-Mail Betreff"**-Feld. Für unser Beispiel haben wir folgende Platzhalter für eine Rechnung definiert.

- **%1** - die Rechnungsnummer
- **%2** - Der Empfängername
- **%3** - Das Fälligkeitsdatum

Damit könnten wir nun Beispielsweise, diesen Betreff aufbauen: Unsere Rechnung **%1** für **%2** - Fällig **%3**

![](images/apps/subjectdoclayoutdonede.PNG)

Wie der Betreff dann in Verwendung aussieht, erfahren Sie im nächsten [Schritt](de-de/apps/mail-subject-plus/working-with-mail-subject-plus/maildialogue/).