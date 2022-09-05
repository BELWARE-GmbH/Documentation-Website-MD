---
title: "Der Stapelmodus"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 7
---

#### Der Stapelmodus - Nutzen der Matrix zum Steuern der Versandart

In einigen unserer Templates werden Sie den Knopf „Stapellauf“ bemerken, mit dieser Funktion lassen sich ausgewählte Belege nach einem zuvor festgelegten Schema verarbeiten. Dieses Schema lässt sich über die Kommunikationsmatrix einrichten.

Damit ein Eintrag in der Kommunikationsmatrix für den Stapellauf verwendet werden kann, muss der Haken „Stapelmodus“ vor den jeweiligen Einträgen gesetzt werden. Ist der Haken gesetzt gilt diese Einrichtung ebenfalls für einen Stapellauf, es muss kein separater Eintrag angelegt werden.

|![](images/connectornav/matrix/stapel1.png)<center>Bei ausgewählten Einträgen wurde der Stapelmodus aktiviert</center>|
|-|

{{<notice info>}}
Wird im Rahmen eines Stapellaufs ein odere mehrere Belege eines Debitors verarbeitet, für den es entweder keine Kommunikationsmatrix-Einträge gibt, oder für den es zwar Einträge in der Kommunikationsmatrix gibt, wovon jedoch keiner für den Stapelmodus markiert worden ist, so wird der Standard-Ausdruck für den betreffenden Beleg ausgeführt. Wollen Sie also Belege für einen Debitor per **Buchen und Verarbeiten** ausdrucken, so brauchen Sie für diesen Debitor **keine** Einrichtung in der Kommunikationsmatrix vornehmen. Dies hat den selben Effekt wie eine für den Stapelmodus eingerichtete Zeile mit dem Jobmodus **Printer**.
{{</notice>}}
####
Um nun einen Versand vorzunehmen, wählen Sie die entsprechenden Belege aus und klicken Sie auf den Button für den Stapellauf. Es werden nun alle ausgewählten Belege nach den zuvor eingestellten Parametern verarbeitet.

|![](images/connectornav/matrix/stapel2.png)<center>Stapelverarbeitung von gebuchten Verkaufsrechnungen</center>|
|-|

