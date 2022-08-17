---
title: "Neu und geplant"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
---

### Neu und geplant

### Geplante Funktionen für zukünftige Versionen
- Implementierung weiterer Belege aus dem Einkaufsbereich sowie Servicebereich.

### Version 2.0.0.0
Verbesserungen:
 - Implementierung Hintergrundverarbeitung
 - Adaptieren des Standards zum Heranziehen der E-Mailadresse des Empfängers
 - Automatisierter Versand nach Abschluss des Buchungsprozesses 
 - Versand von Belegen aus dem Einkaufsbereich (Einkaufsbestellungen, Gebuchte Einkaufsrücklieferungen)

### Version 1.0.0.17
Korrekturen:
 - Korrektur bei Übergabe von Datensätzen an ***Easy Batch*** Funktion
   -- Behebt möglichen Fehler bei Mehrfachselektion

### Version 1.0.0.13
Verbesserungen:
 - Es wird nun geprüft, ob Berichtsparameter hinterlegt sind, und zur Berichtserzeugung herangezogen.

Korrekturen:
 - Korrektur beim Auslesen der Dokumentenlayouts:
  -- Bei mehreren Einträgen mit der gleichen Berichts-Id für einen Debitor

### Version 1.0.0.11
- Korrektur: Fortschrittsanzeige der aktuell bearbeiteten Dokumenten korrigiert

### Version 1.0.0.10
- Integration der ***Connector 365 pdfPaper*** App.

### Version 1.0.0.8
- Korrektur: Setze negativen Status, wenn E-Mail-Codeunit fehlschlägt
- Korrektur: Schreiben von E-Mail bezogenen Informationen in die **Connector 365 Aktivitäten** Liste

### Version 1.0.0.7
- Dialog-Seiten nur wenn erlaubt (GuiAllowed)

### Version 1.0.0.6
- Logik bei der Auswahl des Berichtslayouts an den Standard angeglichen

### Version 1.0.0.0
- Intelligente Prozesssteuerung
- Stapelverarbeitung von Belegen
- Steuerung via Belegsendeprofilen