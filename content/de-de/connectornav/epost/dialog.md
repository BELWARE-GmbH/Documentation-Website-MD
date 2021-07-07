---
title: "Der Dialog"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---

#### Der Dialog

##### Aktionen

{{<img src="/images/connectornav/epost/dialog_aktionen.png" caption="Dialog Modus E-Mail, Aktionen">}}

|Aktionen | |
|---|---|
| Anhänge 1-4 anzeigen | Über diese Aktion können Sie sich die ausgewählten Anhänge ansehen.                                    |
| Dateien hinzufügen   | Über diese Aktion können Sie zusätzliche Dateien auswählen, die als Anhang mitversendet werden sollen. |
| Dokumente anzeigen   | Die hinzugefügten Dokumente lassen sich über diese Aktion als Liste anzeigen.                          |

##### Register Allgemein

{{<img src="/images/connectornav/epost/reg_allgemein.png" caption="Dialog Modus E-POST, Register Allgemein">}}

|Feldbeschreibung | |
|---|---|
| Lfd.Nr.     | Eindeutige Jobnummer, wird vom Connector NAV vergeben.  |
| BenutzerID  | Aktueller Login                                        |
| Berichtsname         | Der jeweils dem Bericht zugeordnete Berichtsname.  (aus der Schnittstellenübergabe)                                                                                                                   |
| Belegnummer          | Belegnummer des Dokumentes. (aus der Schnittstellenübergabe)                                                                                                                                          |
| Dateityp             | Dateityp des Belegs.  (aus der Schnittstellenübergabe)                                                                                                                                                |
| Jobmodus             | Jobmodus des Vorgangs.  (aus der Schnittstellenübergabe)                                                                                                                                              |
| Versand über         | Dieses Feld zeigt die E-Mail Schnittstelle an.                                                                                                                                                        |
| Serververarbeitung   | Zeigt an, ob es sich um einen Serverjob handelt. (aus der Schnittstellenübergabe)                                                                                                                     |
| Freigabe             | Zeigt an, ob der Job freigegeben ist. (bei nicht-Serverjobs immer auf JA)                                                                                                                             |
| Datums-/Zeitvorgabe  | Handelt es sich um einen Serverjob, oder ist eine externe Kommunikationssoftware im Einsatz, kann der Vorgang mit einer Datums- und Zeitvorgabe ausgeführt werden. (Für OfficeMaster, Twinfax, Tobit) |
| Zieladresse          | E-Mail-Adresse des Empfängers                                                                                                                                                                        |

##### Register E-POST

{{<img src="/images/connectornav/epost/reg_epost.png" caption="Dialog Modus Mail, Register E-POST">}}

|Feldbeschreibung | |
|---|---|
| Betreff                                                               | Betreff des E-POST Briefs zwecks Protokollierung.                                                                                                                                          |
| Email Absender                                                        | Adresse des E-POST Senders aus der Schnittstellenübergabe.                                                                                                                                 |
| E-POST mit Deckblatt<br />E-POST Farbauswahl<br />E-POST elektronisch versuchen | Optionen, die für den Versand angegeben werden können. Je nach Einstellung variiert der Preis pro Beleg, nachzulesen in der **Connector NAV Dokumentation Einrichtung und Konfiguration**. |

##### Register Kontaktdaten

{{<img src="/images/connectornav/epost/reg_kontaktdaten.png" caption="Dialog Modus Mail, Register Kontaktdaten">}}

|Feldbeschreibung | |
|---|---|
| Kontaktdaten  | Eine Übersicht der Anschrift des Kontakts. Hierbei handelt es sich lediglich um eine Anzeige, die Daten können nicht geändert werden.  |

##### Register Anhänge

{{<img src="/images/connectornav/epost/reg_anhaenge.png" caption="Dialog Modus Mail, Register Anhänge">}}

|Feldbeschreibung | |
|---|---|
| Kontaktdaten  | Es werden beliebige Formate unterstützt. In Verbindung mit der Connector NAV Benutzerbericht Einrichtung automatisch gefüllt. |
