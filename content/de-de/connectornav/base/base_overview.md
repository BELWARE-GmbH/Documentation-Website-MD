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

{{<img src="/images/connectornav/base/jobliste_uebersicht.png" caption="Connector NAV Jobliste Übersicht">}}

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

{{<img src="/images/connectornav/base/jobliste_uebersicht2.png" caption="Connector NAV Jobliste Übersicht Fortsetzung">}}

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

{{<img src="/images/connectornav/base/aktionen.png" caption="Connector NAV Jobliste Übersicht, Aktionen">}}

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

{{<img src="/images/connectornav/base/dateien_uebersicht.png" caption="Connector NAV Dateien Übersicht">}}

Auf Anfrage können die Connector NAV Dateien auch automatisiert hinzugefügt werden.
Beispielszenario: Ein Kunde hat für bestimmte Artikel zusätzliche PDF-Dokumente. Beim Versenden eines Angebots sucht der Connector NAV für die Angebotszeilen das entsprechende Dokument über eine externe Funktion und fügt diese der E-Mail als Anhang hinzu.

#### Die Connector NAV Rückmeldung Übersicht

{{<img src="/images/connectornav/base/rueckmeldung_uebersicht.png" caption="Connector NAV Rückmeldung Übersicht">}}

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
| Gelesen                | Nein: Rückmeldung wurde nicht als „Gelesen“ markiert. Ja: Rückmeldung wurde als „Gelesen“ markiert. |
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

{{<img src="/images/connectornav/base/rueckmeldung_karte_allgemein.png" caption="Connector NAV Rückmeldung Karte, Register Allgemein">}}

##### Register Dateien

{{<img src="/images/connectornav/base/rueckmeldung_karte_.png" caption="Connector NAV Rückmeldung Karte, Register Dateien">}}
![](media/3335489985fb1c10ba68b870724c4dc9.PNG)  

### Register Rückmeldung

![](media/90be90a38b81153fb9d5638332ca1f53.PNG)   
Connector NAV Rückmeldung Karte, Register Rückmeldung

Die Rückmeldung Karte bietet einen detaillierten Überblick über jede Rückmeldung
eines Vorgangs. Für E-Mail- und Fax-Schnittstellen mit einer Rückmeldung
(OfficeMaster, Twinfax, Faxmaker) wird im Register Rückmeldung diese Datei
gelesen und angezeigt.

### Aktionen in der Rückmeldung Karte

Filelists anzeigen  ![](media/2037f8a2352f0652fc1b45cd17e9c9a6.PNG)  
Connector NAV Rückmeldung Karte, Aktionen

Über die Filelistfunktionen können Sie sich für jede Rückmeldung die Jobdatei
(FILELIST), Bodytextdatei (FILELIST 2) oder die Anhänge 1-4 (FILELIST 3-6)
anzeigen lassen.

Dokument

![](media/d850e61c28a17887cbc3973d182660bb.PNG)  
Connector NAV Rückmeldung Karte, Aktionen

Über die Dokumentfunktionen können Sie die oben genannten Dateien Importieren,
Exportieren oder Löschen.

## Die Connector NAV Rückmeldung Sofortübersicht

![](media/3cc1bd57dd9a708dae9e11b2c0c4e6e3.JPG)Connector NAV Rückmeldung
Sofortübersicht

Dieser manuelle Aufruf ermöglicht es die bisherigen Rückmeldungen zu bestätigen.

Das Feld **Gelesen** kann durch Setzen eines Hakens (= klick) auf „Ja“ gesetzt
werden, es werden nur Datensätze mit dem Wert Gelesen = Nein angezeigt.

Dieses Formular kann auch an geeigneten Stellen automatisch aufgerufen werden,
um  
eine Bestätigung zu erzwingen, dieser Workflow dient dazu, den korrekten  
Versand zwingend zu überprüfen.

## Die Connector NAV Statistik

![](media/29b9570fb3ff4428abfe1266c8ff1ab8.PNG)

Connector NAV Statistik

Feldbeschreibung

| CTI Einträge, ein- ausgehend    | Visuelle Ansicht der CTI-Vorgänge.    |
|---------------------------------|---------------------------------------|
| E-Mail Einträge, ein- ausgehend | Visuelle Ansicht der E-Mail-Vorgänge. |
| Fax Einträge, ein- ausgehend    | Visuelle Ansicht der Fax-Vorgänge.    |
| PDF Einträge, ein- ausgehend    | Visuelle Ansicht der PDF-Vorgänge.    |
| SMS Einträge, ein- ausgehend    | Visuelle Ansicht der SMS-Vorgänge.    |
| Alle Einträge, ein- ausgehend   | Visuelle Ansicht der aller Vorgänge.  |

Filter

| Datumsfilter     | Bei Eingabe werden nur die Einträge des bestimmten Tages angezeigt.                                                                         |
|------------------|---------------------------------------------------------------------------------------------------------------------------------------------|
| Zeitfilter       | Bei Eingabe werden nur die Einträge der bestimmten Uhrzeit angezeigt. Möglich auch eine Zeitspanne, z.B. zwischen 20.00 Uhr und 22.00 Uhr.  |
| Benutzerfilter   | Bei Eingabe werden nur die Einträge des jeweiligen Benutzers angezeigt.                                                                     |
| Belegartenfilter | Bei Auswahl werden nur die Einträge der jeweiligen Belegart angezeigt.                                                                      |

# Die PDF Erzeugung

Mit der Connector NAV Basis haben Sie die Möglichkeit, einfache PDF Dokumente
direkt in Dynamics NAV zu erstellen und zu verwalten.

Die Erzeugung von PDF Dateien aus Dynamics NAV ist aus jeder beliebigen Page
möglich, im Folgenden wird als Beispiel ein Angebot verwendet.

![](media/961dc8cba5985389ca23bc4a3ad5731d.PNG)  
Ausschnitt Beispielangebot Connector NAV Integration

Aktionen

| PDF        | Mit dieser Aktion erstellen Sie das PDF.                                                                |
|------------|---------------------------------------------------------------------------------------------------------|
| Status     | Mit dieser Aktion gelangen Sie in die Jobliste und zu dem entsprechenden Eintrag.                       |
| Historie   | Zusätzlich zur Aktion *Status* werden hier auch Jobeinträge angezeigt, die dem Beleg zugeordnet wurden. |
| PdfPreview | Mit dieser Aktion können Sie sich den Beleg temporär im PDF-Format ansehen.                             |

## Der Dialog im Modus PDF

![](media/bca6b5c739c78042818709351e30367a.PNG)  
Dialog Modus PDF Register Allgemein

Feldbeschreibung

| Lfd.Nr.      | Eindeutige Jobnummer, wird vom Connector NAV vergeben.                              |
|--------------|-------------------------------------------------------------------------------------|
| BenutzerID   | Aktueller Login.                                                                    |
| Berichtsname | Der jeweils dem Bericht zugeordnete Berichtsname.  (aus der Schnittstellenübergabe) |
| Belegnummer  | Belegnummer des Dokumentes.  (aus der Schnittstellenübergabe)                       |
| Name         | Name des Kontakts.  (aus der Schnittstellenübergabe)                                |
| Dateityp     | Dateityp. (aus der Schnittstellenübergabe)                                          |
| Jobmodus     | Jobmodus des Jobs. (aus der Schnittstellenübergabe)                                 |

Feldbeschreibung

| Versand über         | Im Modus PDF nicht genutzt.                                                                                                               |
|----------------------|-------------------------------------------------------------------------------------------------------------------------------------------|
| Protokolldruck       | Gemäß Einrichtung bzw. Benutzer Einrichtung voreingestellt, markieren des Jobs für den Protokolldruck.                                    |
| Mit Signatur         | Gemäß Einrichtung bzw. Benutzer Bericht voreingestellt, markiert den Vorgang, um ihn später zu signieren.  **(Modul SIGN erforderlich!)** |
| Serververarbeitung   | Zeigt an, ob es sich um einen Serverjob handelt. (aus der Schnittstellenübergabe)                                                         |
| Freigabe             | Zeigt an, ob der Job freigegeben ist. (Bei nicht-Serverjobs immer auf JA)                                                                 |
| Datums-/Zeitvorgabe  | Handelt es sich um einen Serverjob, kann der Vorgang mit einer Datums- und Zeitvorgabe ausgeführt werden.                                 |

# Das Modul DocImport

## Nutzen

Mit dem Modul DocImport können Sie externe Dokumente in Microsoft Dynamics NAV
zentral verwalten. Sie minimieren Ihren Papieraufwand, indem Sie wichtige
Dokumente jeder Art in der Jobliste ablegen. Sie finden Ihre Dokumente nicht nur
schneller, Sie sparen damit auch Zeit und verringern die Wahrscheinlichkeit,
dass etwas abhandenkommt.

## Verschiebung der Dokumente

Navigieren Sie zu dem Pfad, den Sie in der Dokumentation **Connector NAV
Konfiguration und Einrichtung** unter dem Menüpunkt **Connector NAV Einrichtung,
Register E-Mail** im Feld **Dokumenteneingangsverzeichnis** eingetragen haben.
Im Beispiel heißt dieser hier com_docImport. In diesem Ordner können Sie
beliebige Dokumente ablegen.

![](media/1c29ec4343335f92965b5418ad480570.PNG)Ordnerstuktur com\_docimport

## Die Connector NAV Eingehende Dokumente 

![](media/c6731ef2360c006d67726e84fc90591e.PNG)  
Connector NAV Eingehende Dokumente

In der Übersicht werden alle Jobeinträge angezeigt, die entweder keinem Beleg
zugeordnet wurden oder nicht manuell auf „zugeordnet“ gesetzt wurden. Es ist die
zentrale Stelle zum Importieren der Dokumente. Anschließend können die Einträge
direkt zugeordnet, oder an Arbeitsgruppen verteilt werden. Danach verschwindet
der Eintrag in dieser Übersicht. In der *Connector NAV Arbeitsgruppe Dokumente*
öffnet sich die Liste mit allen Einträgen, die der Arbeitsgruppe des Benutzers
entsprechen (siehe Dokumentation Connector NAV Konfiguration und Einrichtung).

##  Die Connector NAV Arbeitsgruppen Dokumente 

![](media/65b9d03ac8d3907d0051dc54b98ceea2.PNG)  
Connector NAV Arbeitsgruppen Dokumente

Die nachfolgenden Aktionen können in beiden Übersichten ausgeführt werden.

### Aktionen

![](media/7e0716546309da598827b8c5f07e8c66.PNG)  
Connector NAV Eingehende Dokumente / Arbeitsgruppen Dokumente, Aktionen

Aktionen

| Jobdatei anzeigen     | Mit dieser Aktion wird das Dokument angezeigt.                                  |
|-----------------------|---------------------------------------------------------------------------------|
| Dokumente importieren | Mit dieser Aktion importieren Sie die Dokumente aus dem Ordner in die Jobliste. |

Dokumente zuordnen

Mit dieser Aktion lassen sich die Jobeinträge zu einem Beleg zuordnen. Aus den
Folgenden Abteilungen kann gewählt werden.

![](media/f79c10986a699833f6e83ba7b1d33198.PNG)  
Connector NAV Eingehende Dokumente, Aktion Dokumente zuordnen

Folgende Belege stehen zur Verfügung:

| Verkauf | - Verkaufsangebot - Verkaufsauftrag - Rahmenauftrag - Geb. Verkaufsrechnung - Geb. Verkaufslieferung - Geb. Verkaufsgutschrift |
|---------|--------------------------------------------------------------------------------------------------------------------------------|

Folgende Belege stehen zur Verfügung:

| Einkauf   | - Einkaufsanfrage - Einkaufsbestellung - Rahmenbestellung - Geb. Einkaufsrechnung - Geb. Einkaufslieferung - Geb. Einkaufsgutschrift |
|-----------|--------------------------------------------------------------------------------------------------------------------------------------|
| Fibu      | - Reg. Mahnung - Reg. Lieferanmahnung                                                                                                |
| Sonstiges | - Kontakt - Aufgabe                                                                                                                  |

Eintrag bearbeiten

Mit dieser Aktion lassen sich die Jobeinträge um Informationen ergänzen.

![](media/036880e391afc430696fa74f7dd40bca.PNG)  
Connector NAV Eingehende Dokumente, Aktion Eintrag bearbeiten

# Nützliche Funktionen

CheckFeedback(FromDateL : Date;ToDateL : Date;WithConfirmL : Boolean)

Für einen bestimmten Zeitraum wird geprüft, welche Jobs eine negative
Statusrückmeldung haben. Diese können dann angezeigt.

FromDateL: Startdatum   
ToDateL: Enddatum  
WithConfirmL: Negative Jobs anzeigen Ja/Nein

SetDialog(NewDialog : Boolean)

Mit dieser Funktion kann die Sichtbarkeit des Dialoges übersteuert werden.

NewDialog: Dialog anzeigen Ja/Nein

SetJoblistSubject(„Jobno.“ : Integer;NewSubject : Text[250])

Mit dieser Funktion kann der Betreff eines bestimmten Jobs geändert werden.

„Jobno.“: Lfd. Nummer des Jobeintrages.  
NewSubject: Neuer Betreff.

In der Codeunit **CON FaxMailDialogHook** können Sie durch anlegen eines **Event
Subscribers** für die Funktion **OnReplacePlaceholder** aus der **Codeunit CON
Base**, beliebig weitere Platzhalter anlegen. Hierfür zur Verfügung stehen die
Platzhalter %101 - %199.

Um die Platzhalter mit dem gewünschten Text zu ersetzen, müssen Sie die Funktion
**ReplaceText** aus der Codeunit **CON Base** aufrufen. Der erste Parameter
enthält den Quelltext, der dem Event übergeben wird, der zweite den zu
ersetzenden Platzhalter und der dritte den Text, der den Platzhalter ersetzen
soll.

Im unten zu sehenden Beispiel wird der Platzhalter %36 durch den Namen, der
diesem Beleg zugewiesenen Verkaufsperson ersetzt, sofern es sich bei dem beleg
um eine Auftragsbestätigung
handelt.![](media/5370b97c24b2d180a51afb11e9b3a5be.png)

SetBodytextArray(ArrayText: ARRAY [100] OF Text[1024])

Mit dieser Funktion kann ein Array der Dimension 100 vorbelegt werden. Der
Aufruf erfolgt in der DoJob Routine vor dem Funktionsaufruf
FaxMailWorkflowOneML. Die einzelnen Dimensionen werden an der Stelle mit dem
Platzhalter %23 nacheinander ausgegeben.

# Copyright

© 2003-2017 BELWARE GmbH. Alle Rechte vorbehalten.

Diese Dokumentation sowie die darin beschriebene Software

unterliegt lizenzrechtlichen Bestimmungen und darf nur in

Übereinstimmung mit dieser Lizenzvereinbarung benutzt

oder kopiert werden.

Die Angaben und Daten in dieser Dokumentation dienen

ausschließlich Informationszwecken und gelten unter Vorbehalt.

Die BELWARE GmbH übernimmt dafür keinerlei Haftung

oder Gewährleistung. Die BELWARE GmbH übernimmt

keine Verantwortung für Folgeschäden aus Fehlern oder

Ungenauigkeiten, die in dieser Dokumentation auftreten können.

Außerhalb der Lizenzeinräumung darf ohne ausdrückliche,

schriftliche Genehmigung der BELWARE GmbH kein Teil

dieser Publikation auf irgendeine Weise reproduziert, in einem

Medium gespeichert oder übertragen werden, weder elektronisch,

mechanisch, auf Band oder mit einer anderen Methode.

Alle gennannten Produkt- und Firmennamen sowie eingetragene

Warenzeichen sind das Eigentum der entsprechenden Hersteller

und als solche geschützt.

Für weitere Rückfragen und Verbesserungsvorschläge stehen wir gerne parat.

BELWARE GmbH
