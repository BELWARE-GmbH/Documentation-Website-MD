---
title: "Neu und geplant"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---

### Neu und geplant

#### Version 2.19.0.0 - 07.07.2025
Neue Funktionen:
- Ein neuer Reiter "Connector 365 XRechnung" ermöglicht es, in Verkaufsbelegen verschiedene BT-Felder zu dokumentieren. Derzeit unterstützt: BT-11, BT-12, BT-73, BT-74.

#### Version 2.18.0.1 - 15.05.2025
Korrektur:
- Die XRechnung-Syntax wird nun lediglich in XRechnung-Vorgängen angezeigt.

#### Version 2.16.0.0 - 16.04.2025
Neue Funktionen:
- Ermöglicht die Erstellung von XRechnungen im CII-Syntax aus Verkaufsrechnungen

#### Version 2.15.0.0 - 18.03.2025
Neue Funktionen:
- Ermöglicht das Berücksichtigen von Nullbetragszeilen beim Erzeugen der XRechnung

#### Version 2.14.0.0 - 18.03.2025
Korrektur:
- Information für BT-44 (Buyer name) wird nun standardmäßig aus dem Beleg, nicht länger aus dem Debitor ermittelt

#### Version 2.13.0.0 - 20.02.2025
Neue Funktionen:
- Integration einer entkoppelten Funktion zum Erzeugen von XRechnungen inklusive Prüfbericht
- Es wurde technisch ermöglicht, ungebuchte Rechnungen und Gutschriften (Sales Header) zu verarbeiten
- Integration weiterer nützlicher Events

#### Version 2.12.0.0 - 31.01.2025
Neue Funktionen:
- Ermöglicht das Heranziehen der Mail-Adresse aus dem Debitor, falls keine Mail-Adresse im Dokumentlayout eingerichtet wurde.

#### Version 2.11.0.4 - 31.12.2024
Korrekturen:
- Behebt das Problem von leeren Prüfberichten beim Herunterladen und Öffnen aus den Rückmeldungseinträgen

#### Version 2.11.0.2 - 27.12.2024
Korrekturen:
- Behobenes Problem beim Scrollen durch Validierungsberichte in verschiedenen Browsern, unter anderem im Microsoft Edge

#### Version 2.11.0.1 - 21.11.2024
Korrekturen:
- Beheben von versehentlich zusammengeführten Syntax-Fehler
 
#### Version 2.10.0.0 - 11.10.2024
Neue Funktionen:
- Verbessertes Feedback für das Senden von XRechnungen, um E-Mail-Fehler in die Feedback-Tabelle zu schreiben.

#### Version 2.9.0.14 - 07.10.2024
Korrekturen:
- Nutzung der Standardfunktion GetTaxExemptionReason innerhalb der Codeunit PEPPOL Management anstatt einer eigenen Implementierung.

#### Version 2.9.0.13 - 22.07.2024
Korrekturen:
- Die Datensatz-ID wird nun in die Tabelle der Aktivitätseinträge geschrieben, um die Anzeige von XRechnungen auf der Dokumentenseite zu ermöglichen.

#### Version 2.9.0.12 - 29.05.2024
Korrekturen:
- Das Heranziehen der Berichtslayouts in Kombination mit Connector 365 Easy Batch wurde vereinheitlicht.

#### Version 2.9.0.11 - 13.05.2024
Korrekturen:
- Neue Logik für das Heranziehen des Berichtslayouts implementiert.

#### Version 2.9.0.10 - 11.04.2024
Korrekturen:
- Das Senden ohne E-Mail-Text korrigiert.

#### Version 2.9.0.9 - 02.04.2024
Korrekturen:
- Tenant Media Berechtigungen hinzugefügt

#### Version 2.9.0.8 - 28.03.2024
Korrekturen:
- Übergeben der korrekten Variable zur Berechung der legal monetary info.

#### Version 2.9.0.7 - 28.03.2024
Korrekturen:
- Berechnung der legal monetary info korrigiert.

#### Version 2.9.0.6 - 27.03.2024
Korrekturen:
- Das Berichtslayout wird nun auch in Versionen < BC21 zurückgesetzt.

#### Version 2.9.0.5 - 26.03.2024
Korrekturen:
- Korrektur der Kardinalitäten der Adressadten.

#### Version 2.9.0.4 - 26.03.2024
Korrekturen:
- Der E-Mail-Text wird nun wieder korrekt erstellt.

#### Version 2.9.0.3 - 26.03.2024
Korrekturen:
- Der Filter für die Berichtsausführung wird nun wieder korrekt gesetzt.

#### Version 2.9.0.2 - 20.03.2024
Korrekturen:
- dei elektronische Adresse des Käufers wird nun automatisch mit der E_Mailadresse gefüllt.

#### Version 2.9.0.1 - 15.03.2024
Korrekturen:
- Fehler beim Schreiben des Aktivitäteneintrags wenn die Validierung der XRechnung deaktiviert ist.

#### Version 2.9.0.0 - 01.03.2024
- Herstellen der Kompatibilität zur neuen Easy Batch Version

#### Version 2.8.0.7 - 05.02.2024
Neuerungen:
 - Kompatibilität zu BC19.2 hergestellt

#### Version 2.8.0.6 - 02.02.2024
Neuerungen:
 - Lade XRechnung-Version 3.0 als Standardwert

#### Version 2.8.0.3 - 11.12.2023
Korrekturen:
 - Der E-Mailbetreff aus Mail Subject Plus wird nun auch bei XRechnungen berücksichtigt.

#### Version 2.8.0.2 - 06.11.2023
Korrekturen:
 - Korrektur der Anzeige von XRechnung-Status in Rollencenter:
   -> Gesendete XRechnungen der letzten 30 Tage
   -> XRechnung-Entwürfe im Ausgang

#### Version 2.8.0.0 - 31.08.2023

Neuerungen:
- Erweiterung der [Belegsendeprofile](de-de/apps/xrechnung/first-steps/setup/doc-sending-profile) um die Möglichkeit der XRechnung-Verarbeitung 

#### Version 2.7.0.0 - 25.08.2023
Neuerungen:
 - Erweiterung der [Kommunikationsmatrix](/de-de/apps/base/first-steps/setup/communication-matrix/) um Felder:
    * Kundenreferenz
    * Dokument als Anhang hinzufügen

#### Geplante Funktionen für zukünftige Versionen

#### Version 2.5.0.3 - 31.07.2023
Neuerungen:
 - Kompatibiltät zu XRechnung 2.3
 - Leitweg-Id-Prüfung nur noch optional - führt nicht mehr zum Fehler
 - Möglichkeit, XRechnung Version und Kennung in Einrichtung festzulegen

Korrektur:
 - Behebt Berechtigungsprobleme bei Nutzung von XRechnung mithilfe von mitgelieferten Berechtitungssätzen

#### Version 2.4.0.1 - 31.05.2023
Korrektur:
- Behebt unzureichende Berechtigungen bei Erzeugen und Versenden von XRechnungen

#### Version 2.4.0.0 - 22.05.2023
Neuerungen:
* Integration von **Connector 365 Mail Attachments Plus**
* Möglichkeit, im Dialog flexibel einzustellen, welche Anhänge in die XRechnung-XML-Datei eingebettet werden, und welche als zusätzliche Anhänge per Mail betrachtet werden

#### Version 2.3.0.1 - 26.04.2023
Korrektur:
- Schreiben eines negativen Validierungsberichts beim Versand über Easy Batch führt nicht mehr zum Fehler.
#### Version 2.3.0.0 - 14.04.2023
- Implementierung einer zusätzlichen Tabelle zur Speicherung zusätzlicher Anhänge je Vorgang.
#### Version 2.2.0.0 - 06.01.2023
- Implementierung der neuen Lizenzprüfung.

#### Version 2.1.0.2 vom 17.11.2022
 - Fehlerkorrektur: Die Nutzng der App zusammen mit den anderen connector 365 Apps Easy Batch und Addressee Control führt nicht mehr zum Fehler. 

#### Version 2.1.0.0 vom 04.11.2022
 - Kompatibilität mit **Connector 365 Addressee Control** App
 - Verbessertes Formular für Lizenzbestellungen

#### Version 2.0.0.0 vom 21.10.2022
##### Korrekturen
- Die Nutzung im Zusammenhang mit Mail Subject Plus und Easy Batch führt während des Versands nicht mehr zur Fehlermeldung.
- Änderungen im E-Mail-Dialog führen nicht mehr zur Fehlermeldung.

#### Version 2.0.0.0 vom 23.09.2022
- Abhängigkeit zur neuen Version der App Connector 365 Base (2.0.0.0)
- Überführung der Tabelle "Joblist Entry" in "Activity Entry"

#### Version 1.0.1.23
- Kompatibilität zu XRechnung 2.2

#### Version 1.0.1.22
- Verbesserungen bei der Integration mit der ***Connector 365 Easy Batch*** App

#### Version 1.0.1.18
- Möglichkeit per XML-Felder per Event anzusteuern und zu überschreiben.

#### Version 1.0.1.11
- Dokumentlayout übersteuert nun die Berichtsauswahl je Verwendung. 
- Fehlerkorrektur Dialog: Unterpage "Anhänge" wurde doppelt angezeigt. 
- Es wird nun immer das richtige E-Mail Layout genommen.
- Servicebereich ist nun für die XRechnung verfügbar

#### Version 1.0.1.5
- Korrekturen
- Unterstützung von Servicerechnungen und Servicegutschriften

#### Version 1.0.1.3
- Korrekturen
- Integration zu Connector 365 Easy Batch

#### Version 1.0.1.1
- Die Connector 365 XRechnung App stützt nun auf unsere Basis App
- Hinzufügen von Events zur Steuerung der XRechnung
- Fehlerkorrekturen

#### Version 1.0.1.0
- Statusverfolgung im Rollencenter
- Rechnungsbegleitende Anhänge
- Überarbeiteter XRechnungs-Dialog
- Syntaxüberprüfung der Leitweg-ID
- Erweiterung der Eingabe für Leitweg ID's
- XRechnungsversion angepasst

#### Version 1.0.0.1
- Erstellen einer XRechnung XML-Datei 
- Versand der XRechnung per Mail mit dem Standard BC Mail - Dialog 
- Versand eines Prüfberichts, welcher dem Empfänger die Konformität der Rechnung bestätigt.
- Anzeigen des Prüfberichts für den Nutzer bei “Nicht-Konformität”
- Abbruch des Versands bei "Nicht-Konformität
- Verbesserung der WebService Abfrage / DLL für das Prüfprotokoll

