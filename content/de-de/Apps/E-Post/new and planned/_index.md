---
title: "Neu und geplant"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Neu und geplant

### Geplante Funktionen für zukünftige Versionen
- Erneutes versenden von fehlerhaften Briefen
- Kontakte im Dialog editierbar
- Weitere Belegarten
    - Geb. Service-Rechnungen
    - Geb. Service-Gutschriften
- Erweiterungen der Sendungsstatus-Informationen
  * Bearbeitungsstatus im Zielgebiet
  * FrankierID
- Vereinfachung für 'Einschreiben Rückschein'

### Version 2.3.1.0 - 15.02.2023
- Hotfix: Notwendige Anpassungen an die zu E-Post-API übertragenen Daten Format aufgrund von Änderungen der E-Post-Api-Schnittstelle
  -> Korrigiert Meldung über fehlerhafte Konvertierung von Daten

### Version 2.3.0.0 - 19.01.2023
- Integration der Connector 365 Berechtigungssätze View, Edit und Setup.

Fehlerkorrekturen:
- Korrektur des Datumfilters der Statuskacheln im Rollencenter.
- Die Absenderadresse wird nun korrekt aus den Firmendaten übernommen.

### Version 2.2.0.0 - 06.01.2023
- Implementierung der neuen Lizenzprüfung.

### Version 2.0.0.1 vom 04.11.2022
 - Kompatibilität mit **Connector 365 Addressee Control** App
 - Verbessertes Formular für Lizenzbestellungen

### Version 2.0.0.0
 - Versand von Belegen aus dem Einkaufsbereich (Einkaufsbestellungen, Gebuchte Einkaufsrücklieferungen)
 - Abhängigkeit zur neuen Version der App Connector 365 Base (2.0.0.0)
 - Überführung der Tabelle "Joblist Entry" in "Activity Entry"

### Version 1.1.0.1
- Automatisierte Statusabfrage für offene E-POST-Sendungen über eine Aufgabenwarteschlange.
- Bestimmte Sonderzeichen (",\\) in den Adressdaten führen nicht mehr zu Verarbeitungsfehlern.
- Überläufe bei den Adressdaten werden nicht mehr berücksichtigt, sodass es zu keinen Fehlern bei der Verarbeitung mehr kommt.

### Version 1.0.1.10
- Ländercodes werden bei Installation automatisch eingelesen und in die Tabelle "Länder/Region" geschrieben
- Globale Voreinstellung für Dialog und Briefparameter in der Page "Connector 365 Einrichtung" möglich
- "Berichtsauswahl Verkauf" und "Berichtsauswahl Mahnung" um neues Feld "Für E-POST nutzen" ergänzt. Nur Berichte, bei welchen der Haken gesetzt ist werden berücksichtigt.
- Testzeitraum auf 30 Tage geändert. Zuvor waren hier 5 Gratisbriefe möglich.

### Version 1.0.1.3
- Fehlerkorrektur in der Einrichtung

### Version 1.0.1.2
- Korrekturen
- Integration zu Connector 365 Easy Batch

### Version 1.0.1.1
- Korrektur der Übersetzung

### Version 1.0.1.0
- Versand weiterer Belegarten
    - Geb. Verkaufsgutschriften
    - Registrierte Mahnungen
    - Angebote
    - Verkaufsaufträge
- Versand von Duplexbriefen
- Versandstatus (Jobliste) in der Factbox am Vorgang in der Übersicht
- Zwei Boxen für die Jobliste im Rollencenter
- Die Connector 365 XRechnung App stützt nun auf unsere Basis App

### Version 1.0.0.5
- Versenden von E-POST Briefen aus geb. Verkaufsrechnungen
- Versand in Farbe bzw. S/W
- Einschreiben (Einwurf/Rückschein)
- Archivierung versendeter Briefe
- Auslandsversand

