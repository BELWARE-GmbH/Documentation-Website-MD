---
title: "Neu und geplant"
date: 2025-11-25
description: 
draft: false
collapsible: false
weight: 1
---

### Neu und geplant

#### Version 1.5.0.0 - 30.10.2025
**Neue Funktionen:**

**Multi-Vendor Report Generierung**
- Neue Aktion zum Erstellen von Lieferantenbewertungen für mehrere Lieferanten gleichzeitig
- Automatischer Download der generierten PDFs als ZIP-Datei
- Verbesserte Workflow-Effizienz für Massenbewertungen
- Integration direkt in die Lieferantenbewertungsliste

**Erweiterte Benutzeroberfläche**
- Hinzufügung des Feldes "Promised Receipt Date" zu Purchase Receipt und Purchase Order Archive Unterseiten
- Verbesserte Sichtbarkeit wichtiger Datumsinformationen in Standard-Business Central Seiten
- Optimierte Navigation und Dateneingabe

**Fehlerbeheubungen und Verbesserungen**
- Korrektur der Company Logo-Anzeige in Lieferantenbewertungslisten-Reports
- Verwendung der korrekten Tabelle für Quality Protocol in Reports zur präziseren Datenverarbeitung
- Verbesserte Objekt-ID-Behandlung zur Vermeidung von hardcodierten Referenzen

#### Version 1.4.0.1 - 23.09.2025
**Performance-Optimierungen:**
- Optimierung der CalcDateDiff-Funktion durch direkte Berechnung ohne "Date"-Tabelle
- Verbesserte Performance beim Buchen von Wareneingangszeilen durch optimierte Lizenzprüfung

#### Version 1.4.0.0 - 18.10.2025
**Performance-Verbesserungen:**
- Optimierung der Lizenzprüfung im "BELSUP Supplier Rating Batch" Report für bessere Performance

#### Version 1.3.0.0 - 07.04.2025
**Neue Funktionen:**
- Hinzufügung des Feldes "Returned Quantity" zu Purchase Receipt Lines
- Erweiterte Tracking-Funktionalitäten für Warenrücksendungen

#### Version 1.2.0.0 - 14.03.2025
**Neue Funktionen:**
- Hinzufügung des Feldes "Promised Quantity Delivered" zu Dokumentzeilen
- Erweiterung des Lieferantenkartenfelds "Assigned Industry Group"
- Verbesserte Nachverfolgung von Lieferversprechen

#### Version 1.1.0.0 - 25.10.2024
**Neue Funktionen:**
- Neue Enum "Quality Protocol Document Type"