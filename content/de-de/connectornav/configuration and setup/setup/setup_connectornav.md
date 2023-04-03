---
title: "Einrichtung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---

#### Die Connector NAV Einrichtung

##### Aktionen
![](/images/connectornav/einrichtung_aktionen.png)<center>_Connector NAV Einrichtung, Aktionen_</center>

Mit der Default-Funktion werden die Felder com_job bis com_form mittels des Servernamens automatisch eingetragen. Die Funktion DocImport erzeugt für alle Dokumente, die im Dokumenteneingangsverzeichnis hinterlegt sind, einen Eintrag in der Jobliste. Somit können externe Dokumente in Microsoft Dynamics NAV zugänglich gemacht werden.

##### Register Allgemein
![](/images/connectornav/einrichtung_register_allgemein2.png)<center>_Connector NAV Einrichtung, Register Allgemein_</center>

In der Connector NAV-Einrichtung werden alle wichtigen Einstellungen einmalig hinterlegt.

|Feldbeschreibung |  |
|---|---|
|Servername | Um die Funktion Default Einstellungen zu nutzen, wird hier der Rechnername eintragen, auf dem die Netzwerkfreigabe erstellt wurde. |
|Quellpfad | In diesem Pfad wird die Ausgabedatei (z.B. PDF) temporär erzeugt. Die Variablen %USERPROFILE% und %USERNAME% können hierbei benutzt werden. Dabei werden diese Platzhalter durch die Werte der Environment-Variablen ersetzt|
|Pfad (com_job) | In diesem Pfad werden die Jobdateien abgelegt. Der Connector NAV benennt und setzt den Namen der Datei zusammen aus dem Präfix, der laufenden Nummer, der Jobliste und der Jobkennung. <br />Beispiel: CON5236.JOB|
|Pfad (com_out) | Diese Pfadangabe dient als Ziel für die vom Drucker erzeugte Datei. (z.B PDF). Diese wird nach dem oben genannten Schema erstellt. Diese Dateien sind von Zeit zu Zeit zu löschen bzw. zu archivieren.|
|Pfad (com_in) | Dies ist die Pfadangabe für eingehende Faxe.|
|Pfad (com_ack) | In diesem Pfad werden Rückmeldungsdateien abgelegt, welche vom Connector NAV eingelesen werden. Diese *.JOB Dateien werden später in *.erl Dateien umbenannt und sollten von Zeit zu Zeit archiviert werden.|
|Pfad (com_err) | In diesem Pfad werden Rückmeldungsdateien mit Fehlerinformationen abgelegt, welche vom Connector NAV eingelesen werden. Diese *.JOB Dateien werden später in *.erl Dateien umbenannt und sollten von Zeit zu Zeit archiviert werden.|
|Pfad (com_tmp) | Dieser Pfad kann zur Ablage von Bodytextdateien und Anhängen genutzt werden.|
|Pfad (com_form) | Briefpapiere (PDF-Hintergrund-Layout) können hier abgelegt werden um mit dem Mergeprogramm einem Dokument beigefügt zu werden. Gültig beim Einsatz des Produktes iPaper.|
|Dateiablageort | Über die Auswahl wird festgelegt, ob und wo die über den Connector erzeugten Belegdateien gespeichert werden. Optionen sind:<br />- leer: Belegdateien werden nicht archiviert<br />- Dateisystem: Belegdateien werden im lokalen Dateisystem gespeichert<br />- Datenbank: Belegdateien werden in der NAV-Datenbank gespeichert<br />- Datenbank + Dateisystem: Belegdateien werden im lokalen Dateisystem und der NAV-Datenbank archiviert |
|Jobkennung | Hier wird die Endung der Jobdatei hinterlegt, die Ihre Kommunikationssoftware unterstützt. (OfficeMaster, Twinfax, Faxmaker, Tobit, C3000)|
|Dateikennung | Hier wird die Dateikennung für den Faxversand eingestellt. Der empfohlene Typ ist TIFF oder PDF.|
|Dateikennung Mail | Hier wird die Dateikennung für den E-Mail Versand eingestellt. Der empfohlene Typ ist PDF.|
|Drucker | Dieser Druckertreiber stellt den Vorgabedrucker für die Benutzer dar, es ist also NICHT erforderlich diesen bei jedem Benutzer erneut zu hinterlegen, soweitder gleiche Druckertreiber (z.B. eDocPrintPro oder iPaper) benutzt wird.|

###### Information für Windows XP Nutzer und die Auswahl des Druckers

Mit dem Betriebssystem Windows XP hat man die Möglichkeit, einem Bericht einen Standarddrucker zuzuweisen, welcher über allen anderen Einstellungen greift. Dies bedeutet, dass beim Erzeugen des Berichts immer dieser Drucker gewählt wird, unabhängig davon welcher Drucker kurz vor dem Erzeugen ausgewählt wurde. In Kombination mit dem Connector NAV kann es dabei jedoch zu Kollisionen kommen, sollte der voreingestellte Drucker im Bericht nicht iPaper bzw. eDocPintPro sein. Haben Sie z.B. den iPaper voreingestellt, nutzen in Dynamics NAV jedoch den eDocPrintPro kommt es zu einer Fehlermeldung.

Sollten Sie mit solchen Berichten arbeiten, müssen Sie entweder die Voreinstellung löschen oder Sie kopieren den Bericht, entfernen die Voreinstellung und weisen diesen neuen Bericht der **Benutzerbericht Einrichtung** zu.

##### Register E-Mail
![](/images/connectornav/einrichtung_register_email.png)<center>_Connector NAV Einrichtung, Register E-Mail_</center>

|Feldbeschreibung | |
|---|---|
|E-Mail Absender | Die Globale Adresse für den E-Mail Absender wird benutzt, falls beim Benutzer kein Eintrag vorliegt.<br />Je Benutzer sollte jedoch ein individueller Eintrag hierzu erfasst werden.|
|Bodytext | Hier gilt das gleiche wie beim E-Mail Absender, nur geht es hier um den Bodytext der E-Mail.|
|Dokumenteneingangsverzeichnis | Hier wird der Pfad des Ordners angegeben, aus dem die Dokumente/E-Mails in die Jobliste eingelesen werden sollen.|
|Dokumentenarchivierungsverzeichnis | Hier wird der Pfad des Ordners angegeben, in dem die Dokumente/E-Mails archiviert werden sollen.|

##### Register Steuerung
![](/images/connectornav/einrichtung_register_steuerung.png)<center>Connector NAV Einrichtung, Register Steuerung</center>

|Feldbeschreibung | |
|---|---|
|Präfix | Hier kann ein dreistelliger Code eingetragen werden. Der Belegname wird mit diesem Präfix ergänzt. z.B. NAV132.PDF.|
|Kopfzeile | Hier wird die Kopfzeile eingetragen.|
|Datenbankpfad | Zurzeit ohne Verwendung.|
|Absender-CSID | Hier wird die Standard Absender CSID eingetragen, kann jedoch zusätzlich noch je User abweichend erfasst werden.|
|Serverkennung | Hier wird die Serverkennung eingetragen.|
|Warte auf Dokument (Sek.) | Maximale Zeit (in Sek.) die gewartet wird, bis die temporäre Belegdatei erzeugt wird.|
|Fax Benachrichtigungsadresse | Hier wird die Fax Benachrichtigungsadresse eingetragen.|
|SMS Benachrichtigungsadresse | Hier wir die SMS Benachrichtigungsadresse eingetragen.|
|Programmpfad für Bodytext | Hier können Sie einen Pfad für einen Editor eingeben, mit welchem der Bodytext im Bearbeitungsmodus geöffnet werden soll. Ansonsten öffnet sich das Standardprogramm des Betriebssystems. Folgende Pfade können aufgelöst werden:<br />%PROGRAMDATA%<br />%ROGRAMFILES%<br />%PROGRAMFILES(x86)%<br/>%WINDIR%|
|Fax-Rückmeldung per E-Mail | Über diese Funktion kann man für bestimmte Fax-Rückmeldung eine Benachrichtigung per E-Mail einrichten. Folgende Optionen können gewählt werden:<br />Immer (für alle Faxe)<br />+ (positiv versendete Faxe)<br />- (negativ versendete Faxe)<br />Hierfür muss das E-Mail-Modul lizenziert sein. Die Benachrichtigung erfolgt über die SMTP-Schnittstelle.|
|E-Mail-Rückmeldung per E-Mail | Über diese Funktion kann man für bestimmte E-Mail-Rückmeldung eine Benachrichtigung per E-Mail einrichten. Folgende Optionen können gewählt werden:<br />Immer (für alle E-Mails)<br />+ (positiv versendete E-Mails)<br />- (negativ versendete E-Mails)<br />Die Benachrichtigung erfolgt über die SMTP-Schnittstelle.|
|E-Mail Rückmeldungsadresse| Über diese Feld kann eine E-Mailadresse für Rückmeldungen hinterlegt werden. Aufgabenwarteschlangenfehler werden an diese Adresse gesendet.|
|Jobannahmefehler melden | Wenn diese Funktion angewählt wird, erhält der Benutzer nach einem Vorgang eine Meldung, wenn der Job nicht angenommen wurde.|
|Warnung bei fehlerhafter Zieladresse | Wenn diese Funktion angewählt wird, erhält der Benutzer beim E-Mail-, Fax- oder SMS-Versand einen Hinweis, dass die eingetragene Zieladresse fehlerhaft ist. Im Dialog hat der Benutzer dann die Möglichkeit, diese zu korrigieren.|
|Dateiname ist Belegnummer | Anstelle des oben genannten Schemas wird die Ausgabedatei folgendermaßen benannt: Laufende Nummer der Jobliste + Belegnummer.<br />Beispiel: 8526_ANG365.pdf an Stelle von 8526.pdf|
|Standarddrucker für Protokoll | Wird diese Auswahl getroffen, so wird bei nicht vorhandenen Protokolleinträgen beim Benutzer jeweils der Standarddrucker für das Protokoll berücksichtigt.|
|Rückmeldung aus Übersicht<br />Rückmeldung aus Jobliste Übersicht | Bei Aktivierung dieser Check-Box werden die Rückmeldungen eingelesen, sobald die Connector NAV Rückmeldungen Übersicht bzw. die Connector NAV Jobliste Übersicht von einem Benutzer aufgerufen wird. Ansonsten ist die entsprechende Funktion an einer geeigneten Stelle/bei Erstellung eines neuen Jobs aufzurufen.|
|Erzeugte Dateien löschen | Wenn diese Funktion aktiviert wird, werden alle Dokumente, ausgeschlossen Vorlagen, nach Beendigung des Vorgangs gelöscht (Belege, Bodytexte, ggf. Anhänge). Die Archivierungsfunktionen sind nicht mehr aktiv, auch die Reaktivierung von Jobeinträgen ist nicht mehr möglich. Die Protokollierung ist nicht mehr vorhanden.|
|FaxMail Archivierung | Hiermit wird standardmäßig beim Einlesen der Rückmeldung auch das versendete Dokument in die Datenbank importiert.|
|Archiv JJJJMM | Bei Aktivierung dieser Check-Box werden die Dokumente aus dem Verzeichnis com_out archiviert. Hierbei werden Unterordner in der Form JJJJMM erstellt.|
|Faxeingang Integration | Wird diese Auswahl getroffen, werden eingehende Faxe in der Jobliste angezeigt.|
|Faxnummern bereinigen | Diese Funktion bereinigt für den Connector NAV die Faxnummern. Es werden alle Sonderzeichen gelöscht/ersetzt (z.B. „+“ durch „00“ und „0049“ durch „0“).|
|Temp-Ordner bereinigen | Hier werden Dokumente aus der Jobliste angezeigt, werden diese temporär runtergeladen. Das Löschen der Dokumente nach dem Anschauen muss vom Benutzer bestätigt werden. Ist diese Funktion ausgeschaltet, werden die Dokumente nach dem runterladen nicht gelöscht und der Benutzer erhält auch keine Meldung.|
|Eindeutiger Anhangsdateiname | Hier wird festgelegt, ob erzeugte Dateien immer einen eindeutigen Dateinamen haben. Dies verhindert Duplikate und das Dateien überschrieben werden.|

##### Register Signatur
![](/images/connectornav/einrichtung_register_signatur.png)<center>_Connector NAV Einrichtung, Register Signatur_</center>

{{<notice warning "Hinweis">}}Nur im Zusammenhang mit dem Modul Sign nutzbar.{{</notice>}}

|Feldbeschreibung | |
|---|---|
|Signaturcode Fax | Diese Kennung wird dem Job mitgegeben, somit kann bei Betrieb des Moduls SIGNATUR (SIGN) direkt aus Navision ein Fax mit qualifizierter Signatur verschickt werden.|
|Signaturcode eMail | Diese Kennung wird dem Job mitgegeben, somit kann bei Betrieb des Moduls SIGNATUR (SIGN) direkt aus Navision eine E-Mail mit qualifizierter Signatur verschickt werden.|

##### Register Aktivitäten
![](/images/connectornav/einrichtung_register_aktivitaeten.png)<center>_Connector NAV Einrichtung, Register Aktivitäten_</center>

|Feldbeschreibung | |
|---|---|
|Aktivitätenprotokollposten Integrierung | Bei Aktivierung dieser Check-Box wird beim Ausführen des Jobs ein Eintrag in die Aktivitätenprotokollposten geschrieben.|
|Fax Aktivitätenvorlage | Bitte tragen Sie hier den Vorlagecode für den Vorgang Fax ein.|
|E-Mail Aktivitätenvorlage | Bitte tragen Sie hier den Vorlagecode für den Vorgang E-Mail ein.|
|PDF Aktivitätenvorlage | Bitte tragen Sie hier den Vorlagecode für den Vorgang PDF ein.|
|Dokument Aktivitätenvorlage | Bitte tragen Sie hier den Vorlagecode für den Vorgang Dokument ein.|
|CTI Aktivitätenvorlage | Bitte tragen Sie hier den Vorlagecode für den Vorgang CTI ein.|
|SMS Aktivitätenvorlage | Bitte tragen Sie hier den Vorlagecode für den Vorgang SMS ein.|
|Ausdruck Aktivitätenvorlage | Bitte tragen Sie hier den Vorlagecode für den Vorgang Ausdruck ein.|

##### Register Version
![](/images/connectornav/einrichtung_register_version.png)<center>_Connector NAV Einrichtung, Register Version_</center>

|Feldbeschreibung | |
|---|---|
|Homepage | Link zur Homepage der BELWARE GmbH|
|NAV-Seriennummer | Hier finden Sie Ihre NAV Seriennummer|
|Connector NAV Version | Hier steht die aktuell installierte Version Ihres Connector NAVs/365 BC|
