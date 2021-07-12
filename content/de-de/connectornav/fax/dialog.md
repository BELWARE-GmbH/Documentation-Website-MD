---
title: "Der Dialog"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---

#### Der Dialog

##### Aktionen

![](/images/connectornav/fax/dialog_aktionen.png)
{{<img src="/images/connectornav/fax/dialog_aktionen2.png" caption="Dialog Modus E-Mail, Aktionen">}}

|Aktionen | |
|---|---|
| Dateien hinzufügen   | Über diese Aktion können Sie zusätzliche Dateien auswählen, die als Anhang mitversendet werden sollen. |
| Dokumente anzeigen   | Die hinzugefügten Dokumente lassen sich über diese Aktion als Liste anzeigen.                          |
| Anhänge 1-4 anzeigen | Über diese Aktion können Sie sich die ausgewählten Anhänge ansehen.                                    |

##### Register Allgemein

![](/images/connectornav/fax/dialog_reg_allgemein.png)
{{<img src="/images/connectornav/fax/dialog_reg_allgemein2.png" caption="Dialog Modus Fax, Register Allgemein">}}

|Feldbeschreibung | |
|---|---|
| Lfd.Nr.              | Eindeutige Jobnummer, wird vom Connector NAV vergeben                                                                                                                                                          |
| BenutzerID           | Aktueller Login                                                                                                                                                                                                |
| Berichtsname         | der jeweils dem Bericht zugeordnete Berichtsname  (aus der Schnittstellenübergabe)                                                                                                                             |
| Belegnummer          | Belegnummer des Dokumentes (aus der Schnittstellenübergabe)                                                                                                                                                   |
| Name                 | Name des Kontakts (aus der Schnittstellenübergabe)                                                                                                                                                            |
| Dateityp             | Dateityp des Belegs (aus der Schnittstellenübergabe)                                                                                                                                                           |
| Jobmodus             | Jobmodus des Vorgangs (aus der Schnittstellenübergabe)                                                                                                                                                         |
| Protokolldruck       | Gemäß Einrichtung bzw. Benutzer Einrichtung voreingestellt, Markieren des Jobs für den Protokolldruck                                                                                                          |
| Versand über         | Dieses Feld zeigt die Fax Schnittstelle an.                                                                                                                                                                     |
| Mit Signatur         | Gemäß Einrichtung bzw. Benutzer Bericht voreingestellt, markiert den Vorgang um Ihn später zu signieren  **(Modul SIGN erforderlich!)**                                                                       |
| Serververarbeitung   | Zeigt an, ob es sich um einen Serverjob handelt. (aus der Schnittstellenübergabe)                                                                                                                               |
| Freigabe             | Zeigt an, ob der Job freigegeben ist. (Bei nicht-Serverjobs immer auf JA)                                                                                                                                       |
| Datums-/Zeitvorgabe  | Handelt es sich um einen Serverjob, oder ist eine externe Kommunikationssoftware im Einsatz, kann der Vorgang mit einer Datums- und Zeitvorgabe ausgeführt werden. (Für OfficeMaster, Twinfax, Faxmaker, Tobit) |
| Zieladresse          | E-Mail-Adresse des Empfängers                                                                                                                                                                                  |

##### Register Anhänge

![](/images/connectornav/fax/dialog_reg_anhaenge.png)
![](/images/connectornav/fax/dialog_reg_anhaenge2.png)<center>_Dialog Modus Fax, Register Anhänge_</center>

|Feldbeschreibung | |
|---|---|
| Anhangsdatei 1-4 | Es werden beliebige Formate unterstützt. In Verbindung mit der Connector NAV Benutzerbericht Einrichtung automatisch gefüllt. |
