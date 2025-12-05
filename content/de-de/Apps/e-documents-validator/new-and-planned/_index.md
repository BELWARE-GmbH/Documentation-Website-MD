---
title: "Neu und geplant"
date: 2024-04-03
description: 
draft: false
collapsible: false
weight: 2 
---
### Neu und geplant

#### Version 1.5.0.0 - 13.11.2025
Neuerungen:
- **Automatische Erstellung von Datums-Transformationsregeln bei Installation:** Bei der Installation der App wird automatisch eine Transformationsregel für das Datumsformat erstellt (Code: 'TTMMJJJJ_DATUM'), die das Format 'yyyyMMdd' für die Datumsverarbeitung bei E-Documents bereitstellt.

#### Version 1.4.0.1 - 12.09.2025
Neuerungen:
- **Verbesserte Benutzeroberfläche:** Korrektur der Action Group-Zuordnung zur Vermeidung von Breaking Changes

#### Version 1.4.0.0 - 11.09.2025
Neuerungen:
- **Extraktion von PDF-Anhängen:** Verbessertes Handling mit PDF-Dateien, insbesondere mit ZUGFeRD-Dateien. Mithilfe der Rest-API können nun auch Anhänge aus einer PDF angefragt werden, die dann im Rahmen der eingehenden Dokumente als zusätzliche Anhänge betrachtet werden.
- **Automatische Erkennung eingebetteter E-Rechnungen:** Mit entsprechender Einrichtung ist es möglich, eine eingebettete E-Rechnung (z.B: factur-x.xml) zu erkennen und automatisch als Hauptanhang zu betrachten.
- **Vereinheitlichtes XML- und PDF-Anhang-Extraktionsverfahren:** Integration der Extraktion in eine einheitliche Routine für bessere Performance und Wartbarkeit.
- **Erweiterte Benutzeroberfläche:** Neue Validation-, Visualization- und Extraction-Actions direkt in der Eingehende Dokumente Karte verfügbar
- **Verbesserte Übersetzungen:** Aktualisierte Sprachdateien für bessere Benutzererfahrung

#### Version 1.3.0.3 - 02.12.2024
Neuerungen:
- Extraktion von PDF-Dateien

#### Version 1.2.0.0 - 11.11.2024
Neuerungen:
- Implementierung neuer Lizenzprüfung
- Verbesserte Benutzeroberfläche für E-Document Validierung
- Erweiterte Konfigurationsoptionen für Validierungsregeln

#### Version 1.1.0.0 - 18.07.2024
Neuerungen:
- Visualisierung, Restrukturierung, automatisches Verarbeiten