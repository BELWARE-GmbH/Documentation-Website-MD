---
title: "Benutzer Einrichtung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---

#### Die Connector NAV Benutzer Einrichtung

Für die Nutzung des Connector NAV wird hier für jeden Benutzer ein Eintrag erstellt.

##### Register Allgemein
{{<img src="/images/connectornav/benutzer_einr_reg_allgemein.png" caption="Connector NAV Benutzer Einrichtung, Register Allgemein">}}

|Feldbeschreibung | |
|---|---|
|Benutzer-ID | Hier wird auf die NAV-Standardtabelle Benutzer Einrichtung referenziert.|
|Externe Benutzer-ID | Hier kann eine externe Benutzer-ID eingetragen werden.|
|E-Mail | Diese E-Mail-Adresse wird beim Versand von E-Mails mittels des Connector NAV benutzt.<br />Für IncaMail wird die E-Mail des IncaMail Kontos eingetragen.|
|Arbeitsgruppe | Wenn der Dokumenteneingang genutzt wird, kann hier eine Arbeitsgruppe angelegt werden. Näheres dazu in der Dokumentation Connector NAV Basis.|
|Quellpfad | Hier kann ein abweichender Quellpfad (Connector NAV Einrichtung) hinterlegt werden.|
|Drucker | Hier kann ein abweichender Drucker (Connector NAV Einrichtung) angegeben werden.|
|Protokolldrucker | Hier wird dem Benutzer ein Protokolldrucker zugewiesen.|
|Protokolldruck | Ist hier ein Haken gesetzt, so ist für diesen Benutzer der Protokolldruck aktiviert. Nach Eingang der Rückmeldung wird dann ein Protokoll für den jeweiligen Job ausgedruckt.<br />(hierzu ist der entsprechende Funktionsaufruf zu benutzen)|
|Sofortmeldung | Ein Haken bei dieser Check-Box aktiviert den Modus Sofortmeldung, d. h. die Rückmeldung des jeweiligen Jobs muss vom Benutzer zwingend als gelesen markiert werden.|
|Pfad gesperrt | Statusinformation über die Datei IS_LOCK.TXT im Druckpfad. Ist diese vorhanden, wird kein Job ausgeführt! Dieser Zustand kann nur auftreten, wenn eine Aktion nicht komplett durchgeführt wird.|
|Jobliste Global | Allgemein wird die Jobliste pro Firma angezeigt, ein Haken bei dieser Check-Box bewirkt, dass der jeweilige User die Globale Jobliste sieht.|
|Programmpfad für Bodytext | Hier können Sie einen Pfad für einen Editor eingeben, mit welchem der Bodytext im Bearbeitungsmodus geöffnet werden soll. Ansonsten öffnet sich das Standardprogramm des Betriebssystems. Diese Einstellung hat höhere Priorität als die Einstellung aus der Connector NAV Einrichtung. Folgende Pfade können aufgelöst werden:<br />%PROGRAMDATA%<br />%ROGRAMFILES%<br />%PROGRAMFILES(x86)%<br />%WINDIR%|
|Kopfzeile | Hier wird die Kopfzeile des jeweiligen Benutzers eingegeben.|
|Absender-CSID | Hier wird die Standard Absender CSID je Benutzer eingetragen, bei \<leer\> wird auf die Einrichtungsdaten zugegriffen.|
|Fax Benachrichtigungsadresse | Hier wird die Fax Benachrichtigungsadresse eingetragen.|
|SMS Benachrichtigungsadresse | Hier wir die SMS Benachrichtigungsadresse eingetragen.|
|CTI | Hier wird angegeben, ob der Benutzer CTI nutzt. (Nur im Zusammenhang mit dem Modul CTI)|

##### Register IncaMail
{{<img src="/images/connectornav/benutzer_einr_reg_incamail.png" caption="Connector NAV Benutzer Einrichtung, Register IncaMail">}}

Nur sichtbar für das Modul IncaMail.

|Feldbeschreibung | |
|---|---|
|IncaMail Passwort | Hier wird das Passwort des IncaMail Kontos eingetragen. Dabei wird dieses nicht als Klartext abgespeichert, sondern verschlüsselt.|

##### Register pdfPaper
{{<img src="/images/connectornav/benutzer_einr_reg_incamail.png" caption="Connector NAV Benutzer Einrichtung, Register pdfPaper">}}

Nur sichtbar für das Modul pdfPaper.

|Feldbeschreibung | |
|---|---|
|Zeige PDF Passwort | Nur der Benutzer, der in dieser Check-Box einen Haken hat, kann sich die vergebenen Passwörter in der Jobliste anzeigen lassen|

##### Register E-POST
{{<img src="/images/connectornav/benutzer_einr_reg_epost.png" caption="Connector NAV Benutzer Einrichtung, Register E-POST">}}

Nur sichtbar für das Modul E-POST.

|Feldbeschreibung | |
|---|---|
|E-POST Benutzername | Benutzername des E-POST Kontos.|
|E-POST Passwort | Passwort des E-POST Kontos.|

##### Register Platzhalter
{{<img src="/images/connectornav/benutzer_einr_reg_platzhalter.png" caption="Connector NAV Benutzer Einrichtung, Register Platzhalter">}}

Die folgenden Platzhalter können für den E-Mail Bodytext genutzt werden.

|Feldbeschreibung | |
|---|---|
|Vorname | Platzhalter %2|
|Name | Platzhalter %3|
|Funktion | Platzhalter %4|
|Telefon | Platzhalter %5|
|Fax | Platzhalter %6|
|E-Mail | Platzhalter %7|

|Weitere Platzhalter verfügbar| |
|---|---|
|Belegnummer | Platzhalter %8|
|Firmendaten Name | Platzhalter %9|
|Firmendaten Name 2 | Platzhalter %10|
|Firmendaten Addresse | Platzhalter %11|
|Firmendaten Addresse 2 | Platzhalter %12|
|Firmendaten Postleitzahl | Platzhalter %13|
|Firmendaten Ort | Platzhalter %14|
|Today / Datum | Platzhalter %15|
|Time / Uhrzeit | Platzhalter %16|

**Ein Beispiel für die Anwendung von Platzhaltern**

Platzhalter %1 ist die Anrede, diese kann mittels eines Funktionsaufrufes individuell 
gestaltet werden. \[SetSalutation\(Salutation: Text\[250\]\]
Weitere Platzhalter %17, %18, %19, %21 können mittels des Funktionsaufrufs individuell 
gestaltet werden. \[SetNewLines: Text\[250\]\]

%1,

anbei erhalten Sie unsere Auftragsbestätigung %8.

Für weitere Rückfragen stehen wir Ihnen gerne zur Verfügung.
Mit freundlichen Grüßen

%2 %3
%4
%9
%11
%13 %14
\----------------------------------
Telefon: %5
Telefax: %6
E-Mail: %7

**Eigene Platzhalter definieren**
In der Codeunit **CON FaxMailDialogHook** können Sie durch anlegen eines **Event Subscribers** für die Funktion **OnReplacePlaceholder** aus der **Codeunit CON Base**, beliebig weitere Platzhalter anlegen. Hierfür zur Verfügung stehen die Platzhalter %101 - %199.

Um die Platzhalter mit dem gewünschten Text zu ersetzen, müssen Sie die Funktion **ReplaceText** aus der Codeunit **CON Base** aufrufen. Der erste Parameter enthält den Quelltext, der dem Event übergeben wird, der zweite den zu ersetzenden Platzhalter und der dritte den Text, der den Platzhalter ersetzen soll.

Im unten zu sehenden Beispiel wird der Platzhalter %36 durch den Namen, der diesem Beleg zugewiesenen Verkaufsperson ersetzt, sofern es sich bei dem beleg um eine Auftragsbestätigung handelt.
{{<img src="/images/connectornav/benutzer_einr_platzhalter_bsp.png">}}

**Druckerauswahl pro User**
Sie haben in der Benutzer Einrichtung die Möglichkeit jedem im System angelegten User einen individuellen Drucker zuzuweisen. Dies erlaubt Ihnen, beispielsweise einen Drucker pro Abteilung den jeweiligen Benutzern zuzuordnen.
{{<img src="Cbenutzer_einr_druckerwahl.png" caption="Übersicht der Benutzer Einrichtung, Druckerfeld ist markiert.">}}

Um einen individuellen Drucker festzulegen, muss lediglich ein Drucker in dem Feld „Drucker“ bei dem jeweiligen User hinterlegt werden.
Da es im Connector NAV mehrere Möglichkeiten gibt einen Drucker festzulegen, haben die Drucker folgende Priorität:
1. Drucker aus der Benutzerberichtseinrichtung
2. Drucker aus der Benutzereinrichtung
3. Falls das pdfPaper-Modul vorhanden ist, die dortige Druckereinrichtung.
