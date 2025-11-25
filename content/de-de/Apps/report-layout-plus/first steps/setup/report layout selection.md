---
title: "Berichtslayoutauswahl"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Einrichtung

### Berichtslayoutauswahl

Die Einrichtung der abweichenden Berichtslayouts erreichen Sie über die jeweilige Berichtsauswahl. Zurzeit werden folgende Berichtsauswahlen unterstützt:
-	Verkauf
-	Einkauf
-	Mahnung/Zinsrechnung


In der Berichtsauswahl angelangt finden Sie in den Zeilen das Feld **Berichtslayoutauswahl**.

![](images/apps/Report_Layout_Plus/de-de/app_report_selection.png)

Die dort zu sehende Zahl gibt an, wie viele abweichende Layouts für jeweilige Berichts-ID bereits eingerichtet sind. Durch Klick auf diese Zahl in diesem Feld gelangen Sie zur **Berichtslayoutauswahl**. 
Dort angelangt finden Sie die Übersicht der bereits hinterlegten abweichenden Berichtslayouts, sofern vorhanden.

![](images/apps/Report_Layout_Plus/de-de/app_report-layout_selection.png)

Hier können nun in Stufe 1 je Sprachcode, ein abweichendes Berichtslayout hinterlegt werden. Analog zum Business Central Standard können auch hier für den E-Mail-Text und den Anhang individuelle Layouts hinterlegt werden. 
In Stufe 2 kann unter dem Reiter **Feldauswahl** die Einrichtung noch an zusätzliche Bedingungen geknüpft werden. Abhängig von Werten in Feldern des jeweiligen Belegkopfes können unterschiedliche Berichtslayouts hinterlegt werden. 
Durch Klick in das Feld **Feldbezeichnung** gelangen Sie in die Auswahl der Felder des jeweiligen Belegkopfes und können eines für Ihre gewünschte Bedingung auswählen. 

![](images/apps/Report_Layout_Plus/de-de/app_field_selection_lookup.png)

Über das Feld **Feldwert** gelangen Sie in die Auswahl der verfügbaren Werte des zuvor ausgewählten Feldes. Diese Übersicht enthält sämtliche Werte des jeweiligen Belegkopfes. Sie können einen Wert auswählen oder auch einen benutzerdefinierten Wert eingeben. Außerdem ist es möglich einen Filterausdruck, wie Sie es aus Business Central gewohnt sind, zu hinterlegen.

Über das Feld **Layoutcode** kann nun das gewünschte Layout ausgewählt werden.
Nun können noch beliebige weitere Bedingungen hinterlegt werden. Diese werden nach absteigender Priorität berücksichtigt. Sollte also die Bedingung aus Zeile 1 zutreffen, werden die weiteren Zeilen nicht mehr berücksichtigt.
Über das Feld **Operator** lassen sich auch zusätzlich benachbarte Zeilen aus Bedingungen miteinander verknüpfen. Hierzu muss in diesem Feld der Operator **AND** ausgewählt werden. Hierbei wird immer das Berichtslayout der letzten AND-Zeile verwendet.

![](images/apps/Report_Layout_Plus/de-de/app_field_value_lookup.png)

#
{{< notice info "Hinweis" >}}
 _Unabhängig der hier vorgenommenen Einrichtung, hat das im Dokumentlayout des Debitors und Verwendung hinterlegte Layout immer die höchste Priorität._
{{< /notice >}}
#
Sobald Sie die Einrichtung der Berichtslayoutauswahl vorgenommen haben, greift die hier abgebildete Logik sowohl beim E-Mailversand als auch beim Druck von Berichten. Eine Beispiel hierzu finden Sie im Bereich **"Arbeiten mit Report Layout Plus"** unter [Übersteuern von Berichtslayouts](de-de/apps/report-layout-plus/working-with-rlp/override-report-layout/)