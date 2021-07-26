---
title: "Bodytext"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---

#### Tabellarischer Bodytext

Eine gute Möglichkeit einen Bodytext übersichtlich zu gestalten ist es eine Tabelle in die Datei einzufügen und diese dann als Grundlage nehmen für die weitere Bearbeitung. Dies erlaubt auch weitere Gestaltungsmöglichkeiten wie verschiedene Zellen farblich hervorzuheben oder variable Platzierung von Texten/Bildern.

![](/images/connectornav/word_html/bodytext/tabelle.png)

{{<notice info>}}Falls gewünscht müssen Sie wenn Sie mit Ihrer Tabelle fertig sind die Rahmenlinien ausblenden.{{</notice>}}

#### Platzhalter in Bodytexten

Sie können für eine E-Mail-Bodytextvorlage Platzhalter für Bestandteile verwenden, die individuell für jeden Mitarbeiter sind, beispielsweise für den Namen oder die E-Mail-Adresse. So haben alle Mitarbeiter einen einheitlichen Bodytext in E-Mails. Die Einrichtung der Platzhalter ist in der Dokumentation „Konfiguration und Einrichtung“ zu finden.
Die folgenden Platzhalter können für den E-Mail Bodytext benutzt werden.

|Feldbeschreibung | |
|---|---|
| Anrede                   | Platzhalter %1.  |
| Vorname                  | Platzhalter %2.  |
| Name                     | Platzhalter %3.  |
| Funktion                 | Platzhalter %4.  |
| Telefon                  | Platzhalter %5.  |
| Fax                      | Platzhalter %6.  |
| eMail                    | Platzhalter %7.  |
| Belegnummer              | Platzhalter %8.  |
| Firmendaten Name         | Platzhalter %9.  |
| Firmendaten Name 2       | Platzhalter %10. |
| Firmendaten Addresse     | Platzhalter %11. |
| Firmendaten Addresse 2   | Platzhalter %12. |
| Firmendaten Postleitzahl | Platzhalter %13. |
| Firmendaten Ort          | Platzhalter %14. |
| Today / Datum            | Platzhalter %15. |
| Time / Uhrzeit           | Platzhalter %16. |


##### Ein Beispiel für die Anwendung von Platzhaltern

**%1,**

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

{{<notice info>}}Die Platzhalter beziehen Ihre Infos aus der Benutzereinrichtung bzw. im Fall von %1 aus den Anredecodes. Auf die Anredecodes können Sie direkt über die Suche zugreifen.<br />Sollten die Platzhalter nicht in Text übersetzt werden in einer versendeten E-Mail, sind diese wahrscheinlich nicht eingerichtet. In diesem Fall überprüfen Sie bitte die Benutzereinrichtung bzw. Anredecodes{{</notice>}}

##### Eigene Platzhalter definieren

In der Codeunit **CON FaxMailDialogHook** können Sie durch anlegen eines **Event Subscribers** für die Funktion **OnReplacePlaceholder** aus der **Codeunit CON Base**, beliebig weitere Platzhalter anlegen. Hierfür zur Verfügung stehen die Platzhalter %101 - %199.

Um die Platzhalter mit dem gewünschten Text zu ersetzen, müssen Sie die Funktion **ReplaceText** aus der Codeunit **CON Base** aufrufen. Der erste Parameter enthält den Quelltext, der dem Event übergeben wird, der zweite den zu ersetzenden Platzhalter und der dritte den Text, der den Platzhalter ersetzen soll.

Im unten zu sehenden Beispiel wird der Platzhalter %36 durch den Namen, der diesem Beleg zugewiesenen Verkaufsperson ersetzt, sofern es sich bei dem Beleg um eine Auftragsbestätigung handelt.![](/images/connectornav/word_html/bodytext/bsp.png)

##### Speichern und Archivieren

Alle Bodytexte sollten in einen zentralen Ordner in der gewohnten T611 Struktur abgespeichert werden. Dieser Ordner sollte Ihnen im Normalfall schon als „com_tmp“ oder „com_vorlagen“ zur Verfügung stehen, ansonsten erstellen Sie ihn einfach.

Des Weiteren empfiehlt es sich, dass es einen separaten Archiv Order in Ihrem System gibt, in dem alle erstellten Bodytexte zu finden sind, da tmp/vorlagen nur für die aktuellen Bodytexte gedacht ist. So kann man auch leichter Änderungen an den Bodytexten vornehmen.

##### Einlesen des Bodytexts in das System

Nachdem Sie den Bodytext fertig erstellt und in der Ordner Struktur abgelegt haben, werden diese nun in den Benutzerberichten hinterlegt.

Connector NAV / Verwaltung / Benutzerberichte:

![](/images/connectornav/word_html/bodytext/ben_ber.png)<center>Connector NAV „Benutzerberichte“</center>


Entweder erstellen Sie oben links über der Schaltfläche „Neu“ einen neuen Bericht oder wählen einen schon vorhandenen aus und wählen „Bearbeiten“ aus, um in die Maske/Karte zu gelangen.

![](/images/connectornav/word_html/bodytext/ben_ber_setup.png)<center>Übersicht Benutzerbericht Einrichtung</center>

Im Feld „Bodytextdatei“ können Sie nun die erstellten Bodytexte hinterlegen. Klicken Sie dazu einfach auf den Assist-Button. Suchen den Vorlage Ordner aus und übernehmen das gewünschte Template für den jeweiligen Report.

##### Änderung und Aktualisierung von Bodytexten

Wenn Sie Änderungen an einem schon hinterlegten Bodytexten vornehmen, können diese auch ganz einfach ohne Eingriff in die Benutzerberichte vorgenommen werden. Solange der Dateiname erhalten bleibt, wird der Bodytext ganz einfach von dem System übernommen.

![](/images/connectornav/word_html/bodytext/datei_ersetzen.png)<center>Dateien im Ziel-Ordner ersetzen</center>


Im Beispiel oben wurden Änderungen an „Template_Rechnung_JP“ vorgenommen. Nun werden die neuen Dateien mit gleichem Dateinamen aus dem Archiv Ordner in den zentralen t611 Ordner verschoben und die alten Dateien ersetzt. Im Benutzerbericht wird der neue Bodytext übernommen, da er den gleichen Namen wie der alte hat.

{{<notice info>}}Verschieben Sie immer den Ordner der zu dem Bodytext gehört mit, ansonsten können Anzeigefehler im Bodytext auftreten.{{</notice>}}
