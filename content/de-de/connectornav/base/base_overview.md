---
title: "Die Basisübersichten"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---

### Die Basisübersichten

{{<notice info>}}Bitte beachten Sie, dass auch Funktionen für Module beschrieben werden deren Lizenz Sie nicht erworben haben. Diese sollten i.d.R. am Kontext erkennbar sein.{{</notice>}}
##   
#### Die Connector NAV Jobliste Übersicht

##### Wichtige Felder

![](/images/connectornav/base/jobliste_uebersicht.png)<center>_Connector NAV Jobliste Übersicht_</center>

Die Connector NAV Jobliste Übersicht zeigt tabellarisch die jeweils erteilten Jobaufträge mit allen benötigten Informationen an. Die obere Abbildung zeigt einen kleinen Ausschnitt aus der Jobliste Übersicht.

|Feldbeschreibung | |
|---|---|
| Lfd.Nr.            | Journalnummer, wird vom System vergeben.                                  |
| Jobrichtung        | Richtung des Jobeintrages (Ausgang/Eingang)                               |
| Jobmodus           | Zeigt die Vorgangsart an (eMail, Fax, SMS, PDF, Ausdruck, CTI, Dokument). |
| Versand über       | Zeigt die Schnittstelle des Versands an.                                  |
| Serververarbeitung | Gibt an, ob es sich um einen Serverjob handelt.                           |
| Wiederholung       | Gibt an, ob der Job wiederholt wurde.                                     |
| Dateien     | Zeigt die Anzahl der Dokumente an, die zusätzlich als Anhang zum Vorgang hinzugefügt wurden.  |
| BenutzerID  | Zeigt an von welchem Benutzer der Vorgang ist.                                                |
| Betreff     | Betreff der E-Mail.                                                                           |
| Zieladresse | Zeigt die Zieladresse des Vorgangs an.                                                        |

##### Wichtige Felder zur Identifizierung des Status

![](/images/connectornav/base/jobliste_uebersicht2.png)<center>_Connector NAV Jobliste Übersicht Fortsetzung_</center>

Ob ein Vorgang erfolgreich war, erkennt man i. d. R. an einem ‚+‘-Zeichen im Statuswert. Die nachfolgende Auflistung zeigt auf, was für Status es zu einem Vorgang noch geben kann.

|Feldbeschreibung | |
|---|---|
| Annahmedatum       | Dokumentiert das Annahmedatum für den Job.          |
| Annahmezeit        | Dokumentiert die Annahmezeit für den Job.           |
| Verarbeitet um     | Dokumentiert, wann der Serverjob verarbeitet wurde. |
| Status Rückmeldung | Gibt an, ob eine Rückmeldung zum Vorgang vorliegt.  |
| Datumsvorgabe | Gibt das Datum an, wann der Serverjob verarbeitet werden soll.     |
| Zeitvorgabe   | Gibt die Uhrzeit an, wann der Serverjob verarbeitet werden soll.   |
| Statuswert    | + bedeutet: Job erledigt  - bedeutet: Job nicht korrekt ausgeführt |
| Verarbeitet   | Der Serverjob wurde ordnungsgemäß verarbeitet.                     |
| Dialog OK     | Der Dialog wurde bestätigt.                                        |
| Jobannahme    | Der Job wurde ordnungsgemäß angenommen.                            |
| Freigabe      | Zeigt an, ob der Job freigegeben wurde.                            |

Die folgende Übersicht zeigt tabellarisch, was für Status-Kombinationen es gibt und was diese bedeuten.

###### Client

| Status | Dialog OK | Jobannahme | Beschreibung                                                                                                                                                                         |
|--------|-----------|------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| +      | Ja        | Ja         | Client-Job wurde erfolgreich verschickt.                                                                                                                                             |
| -      | Ja        | Ja         | Client-Job wurde nicht verschickt. Ursache steht in der Rückmeldung.                                                                                                                 |
|        | Ja        | Ja         | Client-Job wurde erfolgreich an die Kommunikationssoftware übergeben. Die Rückmeldung der Kommunikationssoftware wurde noch nicht eingelesen. (Nicht für SMTP, Outlook und SMTP2FAX) |
|        | Ja        | Nein       | Client-Job wurde nicht ordnungsgemäß beendet. Ursache ist häufig eine Error-Fehlermeldung in NAV.                                                                                    |
|        | Nein      | Nein       | Client-Job wurde vom Benutzer abgebrochen, da der Dialog nicht bestätigt wurde.                                                                                                      |

###### Server

| Status | Verarbeitet | Dialog OK | Jobannahme | Freigabe | Storniert | Beschreibung                                                                                                   |
|--------|-------------|-----------|------------|----------|-----------|----------------------------------------------------------------------------------------------------------------|
| +      | Ja          | Ja        | Ja         | Ja       | Nein      | Server-Job wurde erfolgreich verarbeitet und ausgeführt.                                                       |
| -      | Ja          | Ja        | Ja         | Ja       | Nein      | Server-Job wurde erfolgreich verarbeitet wurde aber nicht verschickt. Ursache steht in der Rückmeldung.        |
|        | Ja          | Ja        | Nein       | Ja       | Nein      | Server-Job wurde erfolgreich verarbeitet aber noch nicht ausgeführt.                                           |
|        | Ja          | Ja        | Nein       | Nein     | Nein      | Server-Job wurde erfolgreich verarbeitet aber nicht freigegeben.                                               |
|        | Ja          | Ja        | Nein       | Ja       | Nein      | Server-Job wurde erfolgreich verarbeitet aber storniert.                                                       |
|        | Ja          | Nein      | Nein       | Ja       | Nein      | Server-Job wurde ordnungsgemäß verarbeitet aber vom Benutzer abgebrochen, da der Dialog nicht bestätigt wurde. |
|        | Nein        | Nein      | Nein       | Nein     | Nein      | Server-Job wurde nicht ordnungsgemäß beendet. Ursache ist häufig eine Error-Fehlermeldung in NAV.              |

##### Modul-Spezifische Felder

**E-POST**

![](/images/connectornav/base/epost.png)

|Feldbeschreibung | |
|---|---|
| E-POST Brief                  | Ein Haken hier signalisiert, dass der Job ein E-POST Job ist.                                    |
| E-POST Letter New             | Ein Haken hier signalisiert, dass hier die neue E-POST API genutzt wurde                         |
| E-POST API Brief ID           | Hier steht die ID welche dem Brief von der Deutschen Post zugewiesen wurden.                     |
| E-POST mit Deckblatt          | Der Haken signalisiert, dass der Brief mit einem Deckblatt versendet wurde.                      |
| E-POST Farbauswahl            | Zeigt die Farbe des Briefes an. SW = Schwarz Weiß Farbe = Farbe                                  |
| E-POST elektronisch versuchen | Legt fest ob ein E-POST Brief vor dem regulären Versand erst elektronisch versendet werden soll. |

**XRechnung**

![](/images/connectornav/base/xrechnung.png)

|Feldbeschreibung | |
|---|---|
| XRechnung                | Ein Haken hier signalisiert, dass der Job eine XRechnung beinhaltet |
| Leitweg-ID               | Die Leitweg ID des Empfängers der XRechnung.                        |
| XRechnung PDF als Anhang | Zeigt an wie die Rechnungs-PDF an den Fall angebunden ist.          |

##### Aktionen

![](/images/connectornav/base/aktionen.png)<center>_Connector NAV Jobliste Übersicht, Aktionen_</center>

|Aktionenbeschreibung | |
|---|---|
| Jobdatei anzeigen                                  | Über diese Aktion lässt sich der erzeugte Beleg anzeigen.                                                                                                                                                                                                                                       |
|  Bodytextdatei anzeigen                            | Über diese Aktion lässt sich der genutzte Bodytext anzeigen.                                                                                                                                                                                                                                    |
|  Dateien anzeigen                                  | Über diese Aktion öffnet sich eine Übersicht mit den zusätzlich hinzugefügten Anhängen.                                                                                                                                                                                                         |
|  Anhangsdatei 1-4 anzeigen                         | Über diese Aktion lassen sich die Anhangsdateien anzeigen (falls vorhanden).                                                                                                                                                                                                                    |
| Reaktivierung mit Dialog Reaktivierung ohne Dialog | Beliebig viel markierte Vorgänge können mittels Reaktivierung mit oder ohne Dialog erneut ausgeführt werden. Diese erhalten einen neuen Jobeintrag und werden als wiederholt markiert. In Kombination mit der Funktion **Erzeugte Dokumente löschen** kann diese Funktion nicht genutzt werden. |
| Zugehörigen Beleg öffnen                           | Über diese Aktion gelangt man in die zugehörige Karte des Belegs. (z.B. Angebotskarte, Geb. Verkaufsrechnung Karte)                                                                                                                                                                             |
| Job zuordnen                                       | Über diese Aktion kann ein Job einem Beleg zugeordnet werden. (z.B. einem Angebot, einer Geb. Verkaufsrechnung)                                                                                                                                                                                 |
| Zeige Passwort                                     | Mittels dieser Aktion kann man, falls gesetzt, dass Passwort der PDF für den jeweiligen Vorgang anzeigen. Dies ist jedoch nicht für jeden Benutzer möglich. (siehe Benutzer Einstellung) Nur sichtbar für das Modul pdfPaper                                                                    |
| IncaMail Status    | Mittels dieser Aktion kann man den Status der versendeten IncaMail prüfen.                                                                                                                                      |
| Eintrag bearbeiten | Serverjobs, die noch nicht verarbeitet oder storniert wurden, können mittels dieser Aktion bearbeitet werden.                                                                                                   |
| Freigabe erteilen  | Serverjobs, die eine Freigabe benötigen (Einstellung in der Benutzerbericht Einrichtung) können mittels dieser Aktion freigegeben werden. Durch mehrfach markieren können auch mehrere Jobs freigegeben werden. |
| Stornieren         | Serverjobs, die noch nicht verarbeitet wurden, können mittels dieser Aktion storniert werden.                                                                                                                   |

#### Die Connector NAV Dateien Übersicht

Mit dem Connector NAV besteht nun die Möglichkeit, zusätzlich zu den vier Anhängen, externe Dokumente an eine E-Mail anzuheften. Näheres dazu in der separaten Dokumentation für das Modul E-Mail.

![](/images/connectornav/base/dateien_uebersicht.png)<center>_Connector NAV Dateien Übersicht_</center>

Auf Anfrage können die Connector NAV Dateien auch automatisiert hinzugefügt werden.
Beispielszenario: Ein Kunde hat für bestimmte Artikel zusätzliche PDF-Dokumente. Beim Versenden eines Angebots sucht der Connector NAV für die Angebotszeilen das entsprechende Dokument über eine externe Funktion und fügt diese der E-Mail als Anhang hinzu.

#### Die Connector NAV Rückmeldung Übersicht

![](/images/connectornav/base/rueckmeldung_uebersicht.png)<center>_Connector NAV Rückmeldung Übersicht_</center>

Die Connector NAV Rückmeldung Übersicht zeigt tabellarisch die jeweils zu den erteilten Jobaufträgen erhaltenen Rückmeldungen mit den Statusinformationen an.

|Feldbeschreibung der wichtigsten Felder | |
|---|---|
| Jobreferenz            | Zeigt an, zu welchem Jobeintrag die Rückmeldung gehört.                                             |
| Rückmeldungsdatum/Zeit | Navision Jobnummer.                                                                                 |
| FUNKTION               | SENDACK = Rückmeldungsdatei.                                                                        |
| USERINFO               | Benutzer.                                                                                           |
| SERVICE                | FX3 = Fax Job / SMTP = E-Mail Job.                                                                  |
| SENDTIME               | IMMEDIATE = sofortiger Versand oder  Vorgabeversandzeit jj-mm-tt-hh:mm.                             |
| STATUS                 | + erfolgreicher Vorgang / - Fehler bei Vorgang.                                                     |
| ERROR                  | Statusmeldung als Text.                                                                             |
| SUBADDR                | Bei eingehenden Faxen wir die Durchwahl angezeigt.                                                  |
| Gelesen                | Aktuell hat dieses Feld keine Funktion und ist ein Überbleibsel einer alten Anforderung. |
| Filelist               | Pfad und Dokumentenname. (Dokument)                                                                 |
| Filelist 2             | Pfad und Dokumentenname. (Bodytext)                                                                 |
| Filelist 3             | Pfad und Dokumentenname. (Anhang)                                                                   |
| Filelist 4 | Pfad und Dokumentenname. (Anhang 2)                |
| Filelist 5 | Pfad und Dokumentenname. (Anhang 3)                |
| Filelist 6 | Pfad und Dokumentenname. (Anhang 4)                |
| Dokument   | Dokument aus Filelist als BLOB in der Datenbank.   |
| Dokument 2 | Dokument aus Filelist 2 als BLOB in der Datenbank. |
| Dokument 3 | Dokument aus Filelist 3 als BLOB in der Datenbank. |
| Dokument 4 | Dokument aus Filelist 4 als BLOB in der Datenbank. |
| Dokument 5 | Dokument aus Filelist 5 als BLOB in der Datenbank. |
| Dokument 6 | Dokument aus Filelist 6 als BLOB in der Datenbank. |

Zahlreiche weitere Felder werden angezeigt bzw. sind im Hintergrund vorhanden. Es werden alle Felder aus den Rückmeldungsdateien eingelesen und stehe somit zur weiteren Verarbeitung in Microsoft Dynamics NAV zur Verfügung.<br />Die wesentlichste Information ist jedoch die **Statusinformation**, d.h. ob der Auftrag auch erfolgreich ausgeführt werden konnte. Die Rückmeldungskarte bietet die Möglichkeit die Dokumente aus der Datenbank bzw. aufgrund der FILELIST Angaben anzuzeigen. Auch ist ein nachträgliches Importieren/Löschen der Dokumente möglich. Ein weiteres nützliches Feature ist die Reaktivierung aus der Rückmeldungskarte heraus.<br />Vorteil der Datenbankspeicherung ist, dass die Daten immer angezeigt werden können, ein Zugriff auf den genannten Pfad ist im Gegensatz zur Variante ohne Datenbankspeicherung nicht erforderlich. In beiden Fällen liegt quasi ein Archiv der Dokumente aus der Jobliste vor.

#### Die Connector NAV Rückmeldung Karte

##### Register Allgemein

![](/images/connectornav/base/rueckmeldung_karte_allgemein.png)<center>_Connector NAV Rückmeldung Karte, Register Allgemein_</center>

##### Register Dateien

![](/images/connectornav/base/rueckmeldung_karte_dateien.png)<center>_Connector NAV Rückmeldung Karte, Register Dateien_</center>

##### Register Rückmeldung

![](/images/connectornav/base/rueckmeldung_karte_rueckmeldung.png)<center>_Connector NAV Rückmeldung Karte, Register Rückmeldung_</center>

Die Rückmeldung Karte bietet einen detaillierten Überblick über jede Rückmeldung eines Vorgangs. Für E-Mail- und Fax-Schnittstellen mit einer Rückmeldung (OfficeMaster, Twinfax, Faxmaker) wird im Register Rückmeldung diese Datei gelesen und angezeigt.

##### Aktionen in der Rückmeldung Karte

###### Filelists anzeigen

![](/images/connectornav/base/rueckmeldung_karte_aktionen_filelist.png)<center>_Connector NAV Rückmeldung Karte, Aktionen_</center>

Über die Filelistfunktionen können Sie sich für jede Rückmeldung die Jobdatei (FILELIST), Bodytextdatei (FILELIST 2) oder die Anhänge 1-4 (FILELIST 3-6) anzeigen lassen.

##### Dokument

![](/images/connectornav/base/rueckmeldung_karte_aktionen_dokument.png)<center>_Connector NAV Rückmeldung Karte, Aktionen_</center>

Über die Dokumentfunktionen können Sie die oben genannten Dateien Importieren, Exportieren oder Löschen.

#### Die Connector NAV Rückmeldung Sofortübersicht

![](/images/connectornav/base/rueckmeldung_sofortuebersicht.png)<center>_Connector NAV Rückmeldung Sofortübersicht_</center>

Dieser manuelle Aufruf ermöglicht es die bisherigen Rückmeldungen zu bestätigen. Das Feld **Gelesen** kann durch Setzen eines Hakens (= klick) auf „Ja“ gesetzt werden, es werden nur Datensätze mit dem Wert Gelesen = Nein angezeigt.

Dieses Formular kann auch an geeigneten Stellen automatisch aufgerufen werden, um eine Bestätigung zu erzwingen, dieser Workflow dient dazu, den korrekten Versand zwingend zu überprüfen.

#### Die Connector NAV Statistik

![](/images/connectornav/base/statistik.png)<center>_Connector NAV Statistik_</center>

|Feldbeschreibung | |
|---|---|
| CTI Einträge, ein- ausgehend    | Visuelle Ansicht der CTI-Vorgänge.    |
| E-Mail Einträge, ein- ausgehend | Visuelle Ansicht der E-Mail-Vorgänge. |
| Fax Einträge, ein- ausgehend    | Visuelle Ansicht der Fax-Vorgänge.    |
| PDF Einträge, ein- ausgehend    | Visuelle Ansicht der PDF-Vorgänge.    |
| SMS Einträge, ein- ausgehend    | Visuelle Ansicht der SMS-Vorgänge.    |
| Alle Einträge, ein- ausgehend   | Visuelle Ansicht der aller Vorgänge.  |

|Filter | |
|---|---|
| Datumsfilter     | Bei Eingabe werden nur die Einträge des bestimmten Tages angezeigt.                                                                         |
| Zeitfilter       | Bei Eingabe werden nur die Einträge der bestimmten Uhrzeit angezeigt. Möglich auch eine Zeitspanne, z.B. zwischen 20.00 Uhr und 22.00 Uhr.  |
| Benutzerfilter   | Bei Eingabe werden nur die Einträge des jeweiligen Benutzers angezeigt.                                                                     |
| Belegartenfilter | Bei Auswahl werden nur die Einträge der jeweiligen Belegart angezeigt.                                                                      |
