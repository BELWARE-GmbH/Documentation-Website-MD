---
title: "Fehler analysieren"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 8
---

##### Validierungsergebnisse bei Fehler analysieren  


Bei der Validierung der XRechnung-Datei kann es natürlich auch vorkommen, dass eine XRechnung als nicht konform eingestuft wird. Dies passiert dann, wenn wichtige Informationen in der Rechnung fehlen. Beispielsweise wird eine Validierung schon dann fehlschlagen, wenn die Stadt des Debitors nicht angegeben wurde.  
Um einen Fall zu simulieren, bei dem die Validierung fehlschlägt, ändern wir das obige Vorgehen so um, dass wir „vergessen“ eine Leitweg-ID anzugeben. Dazu rufen wir wieder für unsere Beispielrechnung **103003** die **Kommunikationsmatrix** auf, und entfernen in unserem Eintrag den Wert für die Spalte **Leitweg-ID.**

![](/images/connectornav/data_exchange/xr_valid1.png)

Nun drücken wir **OK** und klicken wieder auf die Schaltfläche **PDF** um eine XRechnung-Datei zu erzeugen.

![](/images/connectornav/data_exchange/xr_valid2.png)

Nun finden wir den Statuswert  **-** für den Job **4046** vor.

![](/images/connectornav/data_exchange/xr_valid3.png)

Das bedeutet, dass die erzeugte XRechnung nicht erfolgreich validiert werden konnte. Drücken Sie auf **Dateien anzeigen** um die erzeugten Dateien anzusehen.

![](/images/connectornav/data_exchange/xr_valid4.png)

Markieren Sie dann den Prüfbericht, zu erkennen an der Endung „_report.html“ und drücken Sie auf **Datei anzeigen**:

![](/images/connectornav/data_exchange/xr_valid5.png)

![](/images/connectornav/data_exchange/xr_valid6.png)  

Aus diesem Prüfbericht geht folgender Fehler hervor:  
„[BR-DE-15] Das Element „Buyer reference“ (BT-10) muss übermittelt werden“   
Mit **Buyer reference** ist hier die Leitweg-ID gemeint, die wir in diesem Beispiel nicht angegeben haben.