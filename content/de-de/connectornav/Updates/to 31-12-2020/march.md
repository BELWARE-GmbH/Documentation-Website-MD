---
title: "März"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---
### Erweiterungen von Standardfeatures:

**Kreditor Auswahl und Kontaktauswahl um Kommunikationsmatrix erweitert**
Die in den Templates eingebauten Pages Kreditor Auswahl & Kontaktauswahl, haben nun beide einen eigenen Knopf, von dem auf die Kommunikationsmatrix zugegriffen werden kann.

**Neues Feld Verwendung PEPPOL in Kommunikationsmatrix**
Im neuen Feld lässt sich festlegen, bei welcher Art von Beleg PEPPOL genutzt wird. Nicht/Rechnung/Gutschrift

Mehr Informationen finden Sie in der entsprechenden [Dokumentation](/de-de/connectornav/data-exchange/)

**Standard für Berichtsoptionen in Benutzerberichten**
Zusätzlich zum einfachen öffnen der Berichtsoptionen im Prozess, gibt es nun noch die Möglichkeit einen Standard der Berichtsoptionen festzulegen der für den jeweiligen Berichts gilt
Weitere Informationen zu den neuen Optionen finden Sie in der [Dokumentation](/de-de/connectornav/configuration-and-setup/).

**Druck bei leeren Jobmodus in Kommunikationsmatrix**
Wird der Jobmodus in der Kommunikationsmatrix freigelassen, wird nun standardmäßig gedruckt.

**Abweichender Ablagepfad für PEPPOL XMLs**
Für XMLs die für PEPPOL erzeugt wurden, kann nun ein eigener Ablageordner definiert werden.

**Segmentversand mit Hintergrundverarbeitung**
Der Segmentversand kann nun auch über die Hintergrundverarbeitung ablaufen.

### Optimierungen:

- Die die Länge des Felds für die PEPPOL Version in der Kommunikationsmatrix wurde erweitert.
- Bei einer Blanket Sales Order wird nun der korrekte DocType ausgegeben & die Statusinfo läuft nun auch korrekt
- Es wurde ein Fehler korrigiert, durch den es vorkommen konnte, dass Anhänge mehrfach angehängt werden.
- Die Felder Kundenname & Kontonr. In der Kommunikationsmatrix wurden in Name & Nr. umbenannt.

### Neue Features:

**pdfPaper**
Es gibt nun einen Pfad für die Einrichtung von ZUGFeRD in der pdfPaper Einrichtung.