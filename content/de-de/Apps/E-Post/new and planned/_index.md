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
- Erneutes Versenden von fehlerhaften Briefen
- Kontakte im Dialog editierbar
- Erweiterungen der Sendungsstatus-Informationen
  * Bearbeitungsstatus im Zielgebiet
  * FrankierID
- Vereinfachung für 'Einschreiben Rückschein'

### Version 2.9.0.2 - 08.03.2024
Korrekturen:
- Bei nicht vorhandenem E-POST-Vorgang in der Berichtsauswahl wird eine Meldung ausgegeben

### Version 2.9.0.1 - 04.03.2024
Korrekturen:
- Die *Senden als* Funktion funktioniert wieder mit E-POST 

### Version 2.9.0.0 - 01.03.2024
Neue Funktionen:
- Herstellen der Kompatibiltät zur neuen Easy Batch Version

### Version 2.8.0.3 - 18.12.2023
Korrekturen:
- Versand von mehreren Dokumenten mit dem Dokumentensendeprofil korrigiert.

### Version 2.8.0.2 - 25.10.2023
Korrekturen:
- Versand mehrerer Dokumente von Listenseiten korrigiert.

### Version 2.8.0.1 - 24.10.2023
Neue Funktionen:
- Neues Ereignis: OnBeforeOpenDialog zum Ändern der E-POST Parameter.

### Version 2.8.0.0 - 24.10.2023
Neue Funktionen:
- Neues EVent: OnBeforeOpenDialog zum Ändern der E-POST-Parameter.

### Version 2.7.0.0 - 06.09.2023
Neuerungen:
- Aufruf des EVents OnAfterCompleteC365Activity nachdem der E-POST Vorgang abgeschlossen wurde.

### Version 2.6.0.0 - 07.08.2023
- Neues Event **OnBeforeWriteJSONContent** zur Übersteuerung der Adressdaten.
- Implementierung der E-POST in die Funktionen des Belegsendeprofils.
- Verbesserung der E-POST-Einrichtung:
  - Zugangsdaten können nun aus einem anderen Mandanten kopiert werden.
  - Kontaktdaten des E-POST-Administraots (E-Mail-Adresse, Mobilnr.) können nun aus der Einrichtung heraus geändert werden.
### Version 2.5.0.0 - 22.05.2023
- Unterstützung für Belegarten aus dem Service-Bereich

### Version 2.4.0.3 - 14.04.2023
- Korrektur der Anzeige der Statuskachel im Rollencenter
### Version 2.4.0.1 - 03.03.2023
- Korrektur zum Versand externer Belege:
 - Der Parameter DocName muss nicht mehr zwingend gefüllt sein, damit der Versand externer Belege erfolgreich ist.
### Version 2.4.0.0 - 16.02.2023
- Funktion zum Versand von externen Dokumenten hinzugefügt
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

