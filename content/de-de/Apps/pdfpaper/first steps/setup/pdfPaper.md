---
title: "PdfPaper Einrichtung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Einrichtung

### Connector 365 PdfPaper

Damit Sie die **Connector 365 pdfPaper** App nutzen können, müssen Sie zunächst die hinterlegten Pfade des IPapers in Business Central hinterlegen.
Dies erfolgt über die **"Connector 365 Einrichtung"**. Diese können Sie über die Suchfunktion finden.

---

![](images/apps/pdfPaper_search.png)

---

***Screenshot aus der Connector 365 Einrichtung:***

---
![](images/apps/pdfPaper_Setup.png)

---
&nbsp;
**PDFPaper-Eingabeordner**: 
- Hier wird der Eingangsorder aus der IPaper-Einrichtung angegeben.

---
**PDFPaper-Ausgabeordner**: 
- Hier wird der Ausgangsordner aus der IPaper-Einrichtung angegeben.

---
***Hinweis***
Die zuvor eingerichteten Eingabe-und Ausgabepfade aus dem IPaper, müssen mit den in Business Central einzurichtenden Pfaden identisch sein. *Beispiel einer IPaper-Einrichtung*:

![](images/apps/ipaper_paths.png)


---
**Maximale Wartezeit** (in Sekunden): 
- Gibt an, wie lange auf die Verarbeitung und Fertigstellung durch den iPaper gewartet wird (in Sekunden)
- ***Hinweis***: Sollte beispielsweise der IPaper-Dienst nicht gestartet sein, so wird Business Central beim Erzeugen einer PDF-Datei die angegebene Zeit (maximale Zeit) auf die Fertigstellung warten. Wenn dieser Wert sehr hoch ist, so kann dies den normalen Arbeitsprozess erheblich beeinträchtigen. Auf der anderen Seite kann eine zu kurz eingestellte Zeit den Effekt haben, dass der IPaper es nicht rechtzeitig schafft, die PDF-Datei entsprechend der Einstellungen zu verarbeiten. Die resultierende Datei ist in diesem Falle unvollständig.
Daher ist die standardmäßig eingestellte Wartezeit **30 Sekunden**, auch wenn die übliche Verarbeitung in der Regel deutlich schneller geschieht.

---
**In Hochformat drehen**: 
- Diese Funktion kann genutzt werden, wenn gefordert wird, dass eine PDF-Datei immer im Hochformat sein soll.
- Der IPaper erkennt, ob eine PDF-Datei im Querformat vorliegt, und dreht die PDF-Datei anschließend in die eingestellte Drehrichtung (folgt).


---
**Drehrichtung**
- Gibt an, in welche Richtung der IPaper die PDF-Dateien drehen soll.
-- *Ist nur dann anzugeben, wenn '**In Hochformat drehen**' aktiviert ist*.
- Mögliche Werte:
  - Uhrzeigersinn (Standardwert)
  - Gegen den Uhrzeigersinn

---
Damit ist die Einrichtung abgeschlossen und Sie können Ihr Briefpapier hinterlegen. Wie das funktioniert finden Sie im [nächsten Schritt](/de-de/apps/pdfpaper/first-steps/setup/reportselection).