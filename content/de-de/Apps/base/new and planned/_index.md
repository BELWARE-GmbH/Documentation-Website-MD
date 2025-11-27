---
title: "Neu und geplant"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---

### Neu und geplant

#### Version 2.33.0.0 - 25.11.2025
Neuerungen:
- **Verbesserte Benutzerlizenzierung:** Nicht aktivierte Benutzer werden nicht länger für die Anzahl Nutzerlizenzen berücksichtigt

#### Version 2.32.0.0 - 25.11.2025
Neuerungen:
- **Erweiterte Role Center Integration:** Die Connector 365 Cue Page ist nun in allen standardmäßig aktivierten Role Centern integriert
- **Verbesserte Benutzeroberfläche:** Integration in Accounting Manager, Finance Manager, Purchasing Manager, Service Manager und weitere Role Center
- **Bessere Sichtbarkeit:** Connector 365 Funktionen sind nun in allen wichtigen Arbeitsbereichen verfügbar

#### Version 2.31.0.0 - 21.11.2025
Neuerungen:
- **Addressee Control Events als obsolet markiert:** Drei bisherige Events wurden als veraltet gekennzeichnet und durch ein neues einheitliches Event ersetzt
- **Zukunftssicherheit:** Vorbereitung auf kommende Verbesserungen der Addressee Control-Funktionalität

#### Version 2.30.0.0 - 14.11.2025
Neuerungen:
- **ZUGFeRD PDF-Unterstützung:** Neues Event zur Ermöglichung der ZUGFeRD PDF-Erstellung
- **Erweiterte Base Parameters:** Neue Felder für ZUGFeRD-Konfiguration hinzugefügt
- **PDF Conformance Level Enum:** Neue Enum für verschiedene PDF-Konformitätsstufen
- **Verbesserte App-Integration:** Optimierte Kommunikation zwischen XRechnung, Easy Batch und PDF-Apps

#### Version 2.29.0.0 - 04.06.2025
Neuerungen:
- **Rahmenaufträge-Unterstützung:** Rahmenaufträge werden nun vollständig unterstützt
- **Neue Fact Boxes:** Die Infobox "Connector 365" wurde der Rahmenauftragsübersicht und der Rahmenauftragskarte hinzugefügt
- **Erweiterte Custom Report Selection:** Integration von Blanket Sales Orders in die benutzerdefinierte Report-Auswahl
 
#### Version 2.26.0.0 16.04.2025
Neuerungen:
  - Den Base-Parametern wurde das Feld "XRechnung Syntax" hinzugefügt, welches es ermöglicht, die Syntax der XRechnung auf UBL oder CII festzulegen.

#### Version 2.23.0.0 10.10.2024
Neuerungen:
 - Lizenzprüfung geändert, so dass nur SaaS Produktionsumgebungen geprüft werden. 

#### Version 2.22.0.1 09.10.2024
Korrekturen:
 - Fehler beim Hinzufügen von Anhängen für Versionen < BC22 korrigiert. 

#### Version 2.22.0.0 25.07.2024
Neuerungen:
 - Neues internes Event für die Integartion von Report Layout Plus und Addressee Control hinzugefügt. 

#### Version 2.21.0.0 05.07.2024
Neuerungen:
 - Neues Event für die neue Easy Batch Version Integration hinzugefügt.

#### Version 2.20.0.7 10.06.2024
Korrekturen:
 - Alle Lizenzaufrufe werden bis zu dreimal wiederholt.

#### Version 2.20.0.6 19.04.2024
Korrekturen:
 - Lizenzprüfung wird im Fehlerfall bis zu drei mal wiederholt.

#### Version 2.20.0.5 11.04.2024
Korrekturen:
 - Kommunikationsmatrix für Kreditoren in eine separate Seite verschoben, sodass kreditorische Belege eingerichtet werden können.

#### Version 2.20.0.4 03.04.2024
Korrekturen:
 - Kompatibilität für Versionen < BC23 hergestellt.

#### Version 2.20.0.3 02.04.2024
Korrekturen:
 - Berechtigungen für Standardtabellen ergänzt.

#### Version 2.20.0.2 02.04.2024
Korrekturen:
 - Unterseite "Belegstatistik" aus der Seite "Gesendete E-Mails" entfernt 

#### Version 2.20.0.1 21.03.2024
Korrekturen:
 - Behebt Fehler bei Abrufen von Bodytexten

#### Version 2.20.0.0 15.03.2024
Neuerungen:
 - Integriert interne Funktionen zwecks Kompatibilität zur kommenden Connector 365 PDF App

#### Version 2.19.0.0 1.03.2024
Neuerungen:
 - Nutzung der neuen Layout Code Feldern aus Berichtsauswahl / Dokumentlayouts
 - Kompatibilität zu neuesten Funktionen der Connector 365 Easy Batch App

#### Version 2.18.0.0 7.2.2024
Neurungen:
  - Fügt Bodytext Feld in die Connector 365 Aktivitäten hinzu

#### Version 2.17.0.0 15.12.2023
Neue features:
 - Implementiert Änderungen um Kompatibilität mit Prioritätensteuerung von "Connector 365 Addressee Control" zu gewährleisten.

#### Version 2.16.06 21.11.2023
Verbesserungen:
 - Behebt Fehler beim Beziehen von Bodytexten

#### Version 2.16.0.5 09.11.2023
Verbesserungen:
 - Beheben von Fehler bei Speicherung und Anzeige diverser Belegarten in der Aktivitätenliste

#### Version 2.13.0.2
Verbesserungen:
- Performance-Verbesserungen für die Connector 365 Statistiken

#### Version 2.13.0.0
Neuerungen:
- Einblenden der [kommunikationsmatrix](/de-de/apps/base/first-steps/setup/communication-matrix/) (Dokumentlayouts) in den Seiten:
  * Kreditoren 
  * Debitoren
  (Jeweils Übersicht- und Karte)

- [Aktivitäteneinträge und Statistik](de-de/apps/base/first-steps/setup/infobox-extensions/) in den Seiten
  * Kreditore
  * Debitore
  * Kontakte
  (Jeweils Übersicht- und Karte)

Korrekturen:
- Korrektur der Funktion zum [Löschen der Aktivitäteneinträge](de-de/apps/base/first-steps/setup/delete-activity-files/)
- Fehlerbehung bei Upgrade von einer Connector 365 Version < 2.0 zu einer Version >= 2.0

#### Version 2.11.0.0 - 22.08.2023
 Verbesserungen:
  * Synchronisation von Rückmeldungs- und Aktivitätseinträgen bei Upgrade auf Connector 365 2.0

#### Version 2.5.0.1 - 26.04.2023
Korrektur:
- Automatisches aktivieren der HTTP-Request zur Lizenzprüfung.
#### Version 2.5.0.0 - 14.04.2023
- Implementierung einer zusätzlichen Tabelle zur Speicherung zusätzlicher Anhänge je Vorgang.
- Implementierung von API Seiten zur Nutzung von Power Automate.
- Unterstützung der App Mail Scenarios Plus
- Anpassung der Berechtigungssätze:
  - CON365, Edit enthält nun den Berechtigungsstz CON365, View 