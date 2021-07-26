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

![](/images/connectornav/epost/dialog_aktionen.png)<center>_Dialog Modus E-Mail, Aktionen_</center>

|Aktionen | |
|---|---|
| Anhänge 1-4 anzeigen | Über diese Aktion können Sie sich die ausgewählten Anhänge ansehen.                                    |
| Dateien hinzufügen   | Über diese Aktion können Sie zusätzliche Dateien auswählen, die als Anhang mitversendet werden sollen. |
| Dokumente anzeigen   | Die hinzugefügten Dokumente lassen sich über diese Aktion als Liste anzeigen.                          |

##### Register Allgemein

![](/images/connectornav/epost/reg_allgemein.png)<center>_Dialog Modus E-POST, Register Allgemein_</center>

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

![](/images/connectornav/epost/reg_epost.png)<center>_Dialog Modus Mail, Register E-POST_</center>

|Feldbeschreibung | |
|---|---|
| Betreff                                                               | Betreff des E-POST Briefs zwecks Protokollierung.                                                                                                                                          |
| Email Absender                                                        | Adresse des E-POST Senders aus der Schnittstellenübergabe.                                                                                                                                 |
| E-POST mit Deckblatt<br />E-POST Farbauswahl<br />E-POST elektronisch versuchen | Optionen, die für den Versand angegeben werden können. Je nach Einstellung variiert der Preis pro Beleg, nachzulesen in der **Connector NAV Dokumentation Einrichtung und Konfiguration**. |

##### Register Kontaktdaten

![](/images/connectornav/epost/reg_kontaktdaten.png)<center>_Dialog Modus Mail, Register Kontaktdaten_</center>

|Feldbeschreibung | |
|---|---|
| Kontaktdaten  | Eine Übersicht der Anschrift des Kontakts. Hierbei handelt es sich lediglich um eine Anzeige, die Daten können nicht geändert werden.  |

##### Register Anhänge

![](/images/connectornav/epost/reg_anhaenge.png)<center>_Dialog Modus Mail, Register Anhänge_</center>

|Feldbeschreibung | |
|---|---|
| Kontaktdaten  | Es werden beliebige Formate unterstützt. In Verbindung mit der Connector NAV Benutzerbericht Einrichtung automatisch gefüllt. |
