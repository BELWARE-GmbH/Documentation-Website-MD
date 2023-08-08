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
- Implementierung weiterer Belege aus dem Einkaufsbereich sowie Servicebereich.

### Version 2.10.0.0 - 08.08.2023
Neuerungen:
 - Einstellbarkeit eines Zeitintervalls zur Verarbeitung offener Aufgaben.

### Version 2.9.0.0 - 07.08.2023
Neuerungen:
 - Freigabefuntion zu offenen Aufgaben.
 - Kompatibilität mit Connector 365 Custom Filename hergestellt.
 - Kompatibilität mit E-POST Belegsendeprofil hergestellt.

Korrekturen:
 - Mehrere E-Mailempfänger werden nun korrekt übergeben und führen nicht mehr zu Fehlern beim Versand.
 - Fehlende Berechtigungen bei der Nutzung des automatischen Versand führen nicht mehr zum Fehler beim Einstellen der Aufgaben.  

### Version 2.7.0.0 - 22.05.2023
Neuerungen:
 - Unterstützung von Belegarten aus dem Service-Bereich.

### Version 2.6.0.0 - 14.04.2023
- Implementierung einer zusätzlichen Tabelle zur Speicherung zusätzlicher Anhänge je Vorgang.
- Implementierung von API Seiten zur Nutzung von Power Automate.
- Unterstützung der App Mail Scenarios Plus
### Version 2.5.0.0 - 02.03.2023
- Sofortige Information beim Auführen der Aktion **Als Stapel senden**, dass die Belege zur Verarbeitung eingestellt wurden.
- Sofortige Information beim Wiederholen von Aufgaben, dass die selektierten Aufgaben wiederholt werden.
- E-Mailrückmeldungen bei fehlerhaften Versand sind nun in den Connector 365 Aktivitäten zu sehen.
- Belege werden nur noch in den Connector 365 Aktivitäten gespeichert, wenn dies in der Basis-Einrichtung angehakt ist.
### Version 2.4.0.0 - 17.02.2023
- Kompatibilität mit **SMTP2FAX**
- Aufrufen des Aufrufstapels für fehlerhafte Easy Batch Aufgaben.

### Version 2.3.0.0 - 06.01.2023
Implementierung der neuen Lizenzprüfung:
- Ab sofort werden alle Business Central Nutzer der Produktivumgebung zur Lizenzierung berücksichtigt und abgrechnet.

- Einkaufsbereich um Einkaufsanfragen erweitert.
- Automatisierter Versand für Einkaufsbestellungen und Einkaufsanfragen.
- Fehlerkorrektur beim Setzen des E-Mailabsenders.
  Der E-Mailabsender wurde für die einzelnen Szenarios nicht korrekt gesetzt.

### Version 2.2.0.0
 - Kompatibilität mit **Connector 365 Addressee Control** App vom 04.11.2022
 - Verbessertes Formular für Lizenzbestellungen


### Version 2.1.0.0
Verbesserungen:
 - Implementierung der Funktionalität zum erneuten Starten offener Aufgaben, welche auf einen Fehler gestoßen sind.
 - Navigation zum Beleg aus der Liste offener Aufgaben.
 - Fehlernachricht nun als Textfeld in die Tabelle der offenen Aufgaben integriert.

### Version 2.0.0.0
Verbesserungen:
 - Implementierung Hintergrundverarbeitung
 - Adaptieren des Standards zum Heranziehen der E-Mailadresse des Empfängers
 - Automatisierter Versand nach Abschluss des Buchungsprozesses 
 - Versand von Belegen aus dem Einkaufsbereich (Einkaufsbestellungen, Gebuchte Einkaufsrücklieferungen)

Weiteres:
 - Abhängigkeit zur neuen Version der App Connector 365 Base (2.0.0.0)
 - Überführung der Tabelle "Joblist Entry" in "Activity Entry"

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
- Korrektur: Fortschrittsanzeige der aktuell bearbeiteten Dokumente korrigiert

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