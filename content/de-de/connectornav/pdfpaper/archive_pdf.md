---
title: "Erstellung von PDF/A-Dokumenten"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 5
---

#### Erstellung von PDF/A-Dokumenten in PDF/A-1b und PDF/A-3b
(nur in Verbindung mit pdfPaper – als FM-Lizensierung)

##### Einrichtung der PDF-Ebene 

In der „pdfPaper Einrichtung“ wird die gewünschte PDF-Ebene hinterlegt, die man standardmäßig pro Mandanten anwenden möchte. Diese Einrichtung greift direkt auf alle Berichte/Belege in einem Mandanten, die mit dem Connector NAV / 365 BC verarbeitet werden.  

![](/images/connectornav/pdfpaper/pdfa_einr.png)<center>Fenster „pdfPaper Einrichtung“</center>

{{<notice info>}}Sie können in dem Feld „PDF Ebene“ zwischen „Leer“, „PDF/A- 1b“ und „PDF/A- 3b“ wählen und somit ihre Default Einstellung je Mandant festlegen.{{</notice>}}

##### Einrichtung der PDF-Ebene über die Kommunikationsmatrix

In der Kommunikationsmatrix wird die Globale Einrichtung der PDF-Ebene aus der „pdfPaper Einrichtung“ übersteuert. Es können pro Debitor und Kreditor je Bericht (ReportID) und Jobmodus abweichende PDF-Ebenen gepflegt werden.

![](/images/connectornav/pdfpaper/pdfa_anp.png)<center>Kommunikationsmatrix Übersicht – PDF/A Ebene anpassen</center>

##### Konformität der PDF-Dokumente

Die Konformität kann auch durch eine Überprüfung der PDF-Datei in einem PDF-Reader (in unserem Fall Adobe Acrobat Pro DC) festgestellt werden.

![](/images/connectornav/pdfpaper/pdfa_konf.png)<center>Konformität der erzeugten PDF-Datei</center>
