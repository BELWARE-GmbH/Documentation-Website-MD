---
title: "Individuelle Betreffzeilen"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 10
---
#### Anwendungsbereich
Aus den verschiedenen Einstellungen für den Jobmodus, den Berichtsnamen und anderes können sich sehr viele Kombinationen ergeben.
Sind für einzelne dieser Kombinationen spezifisch aufgebaute Betreffzeilen in den erzeugten Dokumenten gewünscht, lassen sich diese über dieses Feld realisieren.
Dazu werden selbst zu definierende Platzhalter verwendet, die mit zugeordneten Werten aus der Datenbank ersetzt werden. Eingerichtet werden sie wie folgt:
In der Kommunikationsmatrix gibt es eine Spalte "Betreff". In den zugehörigen Feldern kann durch das [...]-Symbol am rechten Rand

![](images/connectornav/matrix/platzhalter_def_1_mm.png)
####

eine Liste zur Definition der Platzhalter aufgerufen werden

![](images/connectornav/matrix/platzhalter_def_2.png)
####

Hier gibt es die Spalten "Platzhalter" und "Definition". In den Feldern der ersten können frei wählbar die Bezeichnungen der Platzhalter vergeben werden.
In den Feldern der zweiten Spalte können über das [...]-Symbol am Rand jedes Feldes

![](images/connectornav/matrix/platzhalter_def_3_mm.png)
####

die Elemente der Datenbank ausgewählt werden, durch deren Werte die Platzhalter ersetzt werden sollen.
Hierzu stehen Ihnen die Felder aus den Firmendaten, sowie die Informationen aus dem Header zur Verfügung, der für die 
Verwendung des entsprechenden Berichts genutzt wird. Beispielsweise haben Sie für den Standard-Bericht 1306: Standard Sales - Invoice, den Verkaufsrechnungskopf (Sales Invoice Header) zur Verfügung.

![](images/connectornav/matrix/platzhalter_def_4.png)
####

{{< notice info "Technischer Hinweis" >}}
Um die Tabelle für die Kopfdaten zu bestimmen, werden die Report-Metadaten des jeweiligen Berichts auf dessen Eigenschaft: **FirstDataItemTableID** untersucht. Die Standard-Berichte in Business Central hinterlegen für dieses jeweils erste Element (FirstDataItemTableId) den zugrundeliegenden Header. Beispiel: Report 1306 -> Sales Invoice Header. 
Wenn anpepasste Berichte eine andere Sturktur vorweisen, also eine andere Tabelle an erster Stelle steht, so
wird diese auch in den Tabellenfilter übernommen, wodurch möglicherweise unbrauchbare Felder angezeigt werden, beziehungsweise wichtige Felder vermisst werden könnten. Für solche Fälle gibt es die Möglichkeit, über einen Event-Subscriber abhängig von der Berichts-Id die richtige Zieltabelle zu setzen. Mehr dazu finden Sie unter [hier](/de-de/apps/mail-subject-plus/working-with-mail-subject-plus/events).
{{< /notice >}}

<br>
Nachdem zu einem Platzhalter ein Datenbankfeld ausgewählt wurde, ist die Auswahl am Ende der Liste durch OK zu bestätigen.

![](images/connectornav/matrix/platzhalter_def_5.png)
####

Die Liste der Zuordnungen zwischen Platzhaltern und Datenbankfeldern ist an deren Ende ebenfalls noch mit OK zu bestätigen.
![](images/connectornav/matrix/platzhalter_def_6.png)

### Steuerung der Platzhalter-Zieltabelle über Event

Wie bereits erwähnt, kann eine Platzhalterauswahl je nach Berichts-Design unbrauchbare Felder anzeigen.
Mithilfe eines Event haben Sie die Möglichkeit, selbst die richtige Zieltabelle für die Platzhalterwahl, abhängig vom genutzten Bericht zu bestimmen.
Das zu nutzende Event lautet: **OnBeforeSetRecordFilterForEmailPlaceholders** und wird über die Page **5402538 - CON eMail Placeholder** aufgerufen. Ein entsprechender Event-Subscriber könnte wie folgt aussehen.
```al
LOCAL [EventSubscriber] OnBeforeSetRecordFilterForEmailPlaceholdersSubscriber(VAR TargetTableNo : Integer;ReportId : Integer)
IF ReportId = 50001 THEN
    TargetTableNo := 112;
```
Hier wird für ein Beispiel-Bericht 50001 die Zieltabelle auf den Wert 112 (Verkaufsrechnungskopf) gesetzt.
Bei der nächsten Auswahl eines Platzhalters für den Bericht 50001 werden nun neben den Firmendaten auch die möglichen Felder 
aus dem Verkaufsrechnungskopf angezeigt.

{{< notice info Hinweis >}}
Es sollte darauf geachtet werden, dass die korrekte Zieltabelle zur jeweiligen Nutzung verwendet wird.
**Beispiel**: Wenn ein Rechnungsbericht per Mail aus den gebuchten Verkaufsrechnungen (*Verkaufsrechnungskopf*) verschickt wird, so wäre eine Platzhalterauswahl von Verkaufsgutschrifts-Feldern (*Verkaufsgutschriftskopf*) für diesen Bericht fehlerhaft. Dies könnte zur Laufzeit zu Fehlern, bzw. zu unerwarteten aufgelösten Platzhaltern führen.
{{< /notice >}}