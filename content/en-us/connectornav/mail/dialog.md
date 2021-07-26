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

![](/images/connectornav/mail/dialog_aktionen.png)<center>Dialog Modus E-Mail, Aktionen</center>

|Aktionen | |
|---|---|
| Bodytext bearbeiten  | Über diese Aktion kann der Bodytext aus der Schnittstellenübergabe bearbeitet werden.                  |
| Bodytext wechseln    | Über diese Aktion können Sie einen anderen Bodytext aussuchen.                                         |
| Dateien hinzufügen   | Über diese Aktion können Sie zusätzliche Dateien auswählen, die als Anhang mitversendet werden sollen. |
| Dokumente anzeigen   | Die hinzugefügten Dokumente lassen sich über diese Aktion als Liste anzeigen.                          |
| Anhänge 1-4 anzeigen | Über diese Aktion können Sie sich die ausgewählten Anhänge ansehen.                                    |

##### Besonderheit bei der Aktion Bodytext bearbeiten

Nach dem Betätigen der Aktion wird der Bodytext auf dem lokalen Arbeitsplatz runtergeladen und geöffnet. Anschließend folgt eine Meldung, ob der Bodytext hochgeladen werden soll. Wenn Änderungen am Bodytext vorgenommen wurden, muss das Dokument geschlossen und anschließend die Meldung mit **Ja** bestätigt werden. Der geänderte Bodytext wird hochgeladen und ersetzt.

![](/images/connectornav/mail/dialog_bodytext.png)<center>Dialog Aktion Bodytext bearbeiten (Editor)</center>

Auszuführende Schritte:

1\. Aktion Bodytext bearbeiten drücken.  
2\. Den Bodytext beliebig abändern.  
3\. Das Dokument speichern und schließen.  
4\. Die Meldung mit Ja bestätigen.

{{<notice info>}}Sie können auch Word benutzen um Ihre Bodytexte zu erstellen und zu bearbeiten. Dies bietet Ihnen mehr Designmöglichkeiten als der Editor. Mehr Informationen hierzu erhalten Sie in der HTML Dokumente mit Word Dokumentation.{{</notice>}}

![](/images/connectornav/mail/dialog_bodytext2.png)<center>Dialog Aktion Bodytext bearbeiten (Word)</center>

##### Register Allgemein

![](/images/connectornav/mail/reg_allgemein.png)<center>Dialog Modus Mail, Register Allgemein</center>

|Feldbeschreibung | |
|---|---|
| Lfd.Nr.              | Eindeutige Jobnummer, wird vom Connector NAV vergeben.                                                                                                                                                |
| BenutzerID           | Aktueller Login.                                                                                                                                                                                      |
| Berichtsname         | Der jeweils dem Bericht zugeordnete Berichtsname.  (aus der Schnittstellenübergabe)                                                                                                                   |
| Belegnummer          | Belegnummer des Dokumentes. (aus der Schnittstellenübergabe)                                                                                                                                          |
| Name                 | Name des Kontakts.  (aus der Schnittstellenübergabe)                                                                                                                                                  |
| Dateityp             | Dateityp des Belegs.  (aus der Schnittstellenübergabe)                                                                                                                                                |
| Jobmodus             | Jobmodus des Vorgangs.  (aus der Schnittstellenübergabe)                                                                                                                                              |
| Versand über         | Dieses Feld zeigt die E-Mail Schnittstelle an.                                                                                                                                                        |
| Protokolldruck       | Gemäß Einrichtung bzw. Benutzer Einrichtung voreingestellt, Markieren des Jobs für den Protokolldruck.                                                                                                |
| Mit Signatur         | Zeigt an, ob der Vorgang mit Signatur erfolgt.  **(Modul SIGN erforderlich!)**                                                                                                                        |
| Serververarbeitung   | Zeigt an, ob es sich um einen Serverjob handelt. (aus der Schnittstellenübergabe)                                                                                                                     |
| Freigabe             | Zeigt an, ob der Job freigegeben ist. (Bei nicht-Serverjobs immer auf JA)                                                                                                                             |
| Datums-/Zeitvorgabe  | Handelt es sich um einen Serverjob, oder ist eine externe Kommunikationssoftware im Einsatz, kann der Vorgang mit einer Datums- und Zeitvorgabe ausgeführt werden. (Für OfficeMaster, Twinfax, Tobit) |
| Zieladresse          | E-Mail-Adresse des Empfängers. Mit einem Klick auf […] haben Sie Zugriff auf die Kontaktliste.                                                                                                        |

##### Register E-Mail

![](/images/connectornav/mail/reg_email.png)<center>Dialog Modus Mail, Register E-Mail</center>

|Feldbeschreibung | |
|---|---|
| Email Absender  | Diese wird automatisch aus der Schnittstellenübergabe gefüllt. Kann abgeändert werden, Ausnahme bei der Schnittstelle Outlook. Der Absender ist abhängig von dem Default-Konto des Arbeitsplatzes.  |
| EmailCC         | Mailadresse des zweiten Empfängers.                                                                                                                                                                 |
| Betreff       | Standardmäßig Belegart + Belegnummer als Vorschlag, alternativ über die Benutzerbericht Einrichtung individuell vorbelegbar.  |
| Bodytextdatei | Link auf die Datei, die den Bodytext für die jeweilige E-Mail darstellt.                                                      |

##### Register Target(s)

![](/images/connectornav/mail/reg_targets.png)<center>Dialog Modus Mail, Register Target(s)</center>

|Feldbeschreibung | |
|---|---|
| Zieladresse | Hier können Sie untereinander unbegrenzt viele Zieladressen angeben.     |
| Cc          |  Ist hier ein Haken gesetzt, taucht im Adresse im Cc-Feld auf.           |
| Bcc         | Ist hier ein Haken gesetzt, taucht die Adresse nicht auf der E-Mail auf. |

**Kommunikationsmatrix**

![](/images/connectornav/mail/komm_matrix.png)<center>Connector NAV Verwaltung, Kommunikationsmatrix</center>

Innerhalb der Kommunikationsmatrix stehen Ihnen N-Zieladressen, das Cc-Feld und das Bcc-Feld ebenfalls zur Verfügung. Dort können Adressen fest pro Kontakt hinterlegt werden.

**Benutzerberichtseinrichtung:**

In der Benutzerberichtseinrichtung haben Sie ebenfalls die Möglichkeit pro Report eine BCC E-Mail-Adresse anzugeben die ebenfalls den Bericht als E-Mail erhält.

![](/images/connectornav/mail/ben_bericht.png)<center>Connector NAV Verwaltung, Benutzerberichteinrichtung</center>

##### Register Anhänge

![](/images/connectornav/mail/reg_anhaenge.png)<center>Dialog Modus Mail, Register Anhänge</center>

|Feldbeschreibung | |
|---|---|
| Datei anzeigen              | Mit der Funktion lassen sich zuvor angehängte Anhänge anzeigen.                                                                      |
| Dateien hinzufügen          | Über diese Schaltfläche öffnet sich der Explorer in dem Sie Ihre Anhänge auswählen können (eine Mehrfachauswahl ist möglich)         |
| Dokument anfügen            | Bestimmt ob der Anhänge versendet wird. Entfernen Sie den Haken falls eine bestimmte Datei nicht versendet werden soll               |
| Dokument oben/unten anfügen | (benötigt das pdfPaper Modul) Erlaubt das Anhänge direkt an den Beleg gehängt werden, dies erfolgt entweder vor oder nach dem Beleg. |