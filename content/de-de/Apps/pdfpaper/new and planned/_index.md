---
title: "Neu und geplant"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Neue und geplante Features der Connector 365 PdfPaper App

Hier finden Sie alle wichtigen Informationen und Hinweise zu neuen und geplanten Features der Connector 365 PdfPaper App.

Nutzen Sie einfach entweder das untere oder linke Navigationsmenü.

Für den Fall, dass Ihnen eine Frage nicht beantwortet werden konnte, helfen wir Ihnen gerne persönlich weiter. Die nötigen Kontaktinformationen finden Sie auf der [Support-Seite](de-de/apps/help-and-support/).

### Geplante Funktionen für zukünftige Versionen
- Weitere Funktionen aus Modul PdfPaper
- Integration von PDF/A-Funktion

### Version 1.9.0.0 - 17.01.2024
Neue Funktionen:
- Fehler während der iPaper-Verarbeitung werden nun ausgegeben, anstatt das unverarbeitete PDF weiter zu nutzen.

### Version 1.8.0.1 - 16.01.2024
Korrekturen:
- Die Berichtsverwendung wird nun anhand des Belegkopfes gesetzt.

### Version 1.8.0.0 - 08.09.2023
Neue Funktionen:
- Neues Event *OnBeforeSaveReportAsPdf* zum Übersteuern der Report Parameter.
- Neues Event *OnBeforeFindReportSelectionStationeryOnAfterSetFilter* zum Ändern der Berichtsasuwahl.
- Neues Event *OnBeforeProcessPdf*, um die iPaper-Funktionalität außer Kraft zu setzen.
- Anzahl gedruckt Zähler wird bei Nutzung der Preview-Funktion zurückgesetzt. 

Korrekturen:
- Berichtsverwendung zum Filter der Berichtsauswahl hinzugefügt, um zu verhindern, dass der falsche Datensatz herangezogen wird.

### Version 1.7.0.0 - 20.06.2023
Neue Funktionen:
- Eventparameter *ReportUsageGlo* zu den Events *OnBeforeMergeAttachmentsToIPaperXML* und *OnAfterMergeAttachmentsToIPaperXML* um Anhänge abhängig der Berichtsverwendung zu steuern.

### Version 1.6.0.0 - 11.05.2023
Neue Funktionen:
- Integration des Produkts *PDF2Print*, ermöglicht den Druck vom iPaper verarbeiteter PDFs bei Severdruckern.

### Version 1.5.0.0 - 08.05.2023
Neue Funktionen:
- Option zum automatischen Löschen der erzeugten PDFs auf dem Dateisystem sobald ein Vorgang abgeschlossen ist.

### Version 1.4.0.0 - 07.05.2023
Neue Funktionen:
- Nutzung der iPaper-Funktionen bei jeder Berichtsausführung

### Version 1.3.0.0 - 03.05.2023
Neue Funktionen:
- Erweiterung auf Einkaufsbereich
  - Integration von Funktionsaufrufen im Einkaufsbereich
    -> Rahmenbestellungen
    -> Einkaufsgutschriften
    -> Einkaufsbestellungen
    -> Einkaufsanfragen
    -> Einkaufsreklamationen
  - Möglichkeit des Hinterlegens von Briefpapier in der Berichtsauswahl - Einkauf
  - Möglichkeit des Hinterlegens von Briefpapier in Dokumentlayouts von Kreditoren

### Version 1.1.0.1 - 10.01.2023
Korrekturen:
- Korrektur der Prioritätensteuerung beim Heranziehen des Briefpapiers.
### Version 1.1.0.0 - 04.01.2023
- Implementierung der neuen Lizenzprüfung.

Neue Funktionen:
- Hinterlegen von Briefpapieren je Zuständigkeitseinheit.
### Version 1.0.0.3
Neue Funktionen:
- Mergen von mehreren PDF-Dateien zu einer einzigen
- Automatisches Drehen von PDF-Dateien, wenn diese im Querformat vorhanden sind
- Aktionsknöpfe, um Briefpapier per Knopfdruck wieder zu entfernen 
- Briefpapier global unter Firmendaten einrichtbar

Korrekturen:
- Korrekter Dateiname bei der Vorschau von Briefpapieren
### Version 1.0.0.0
- Hinterlegen von Briefpapier pro Bericht & Debitor
- Anlegen von mehreren Briefpapieren
- Vorschaufunktion
