---
title: "Benutzerbericht Einrichtung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---

#### Die Connector NAV Benutzerbericht Einrichtung
Mittels der Benutzerbericht Einrichtung lassen sich individuellere Voreinstellungen pro Benutzer, Bericht und Sprache einstellen. Eine Einstellung in der Benutzerbericht Einrichtung hat **höhere Priorität** als die der Connector NAV Benutzer Einrichtung (z.B. E-Mail Absender).

##### Aktionen
![](/images/connectornav/benreport_einr_aktionen.png)<center>_Connector NAV Benutzerbericht Einrichtung, Aktionen_</center>

|Aktionenbeschreibung| |
|---|---|
|Bodytext/SMS Bodytext<br />Anhangsdatei 1 - 4 | Über diese Aktionen kann das gewünschte Dokument angezeigt werden.|
|Briefpapier Client/Server<br />Briefpapier für den Vorgang Ausdruck<br />Client/Server | Über diese Aktionen kann das Briefpapier angezeigt werden. (Nur sichtbar für das Modul pdfPaper)|
|Anhänge hinzufügen | Über diese Aktion können je nach Modul pro Jobmodus Standardanhänge hinzugefügt werden.|

Nachdem die Aktion durchgeführt wurde, öffnet sich das Dokument. Es erfolgt eine Meldung (ob der Temp-Ordner gelöscht werden soll).

![](/images/connectornav/benreport_einr_aktionen2.png)<center>_Connector NAV Benutzerbericht Einrichtung, Aktion Anzeigen_</center>

Dieser löscht alle runtergeladenen Dokumente, die sich im lokalen Temp-Verzeichnis unter %appdata% befinden. Bevor mit Ja bestätigt wird, muss das Dokument wieder geschlossen werden, andernfalls kommt es zu einer Fehlermeldung. Möchte man diese Abfrage nicht, kann das Fenster in der Connector NAV Einrichtung über die Funktion „Temp-Ordner bereinigen“ ausgeschaltet werden.

#### Register Allgemein
![](/images/connectornav/benreport_einr_reg_allgemein.png)<center>_Connector NAV Benutzerbericht Einrichtung, Register Allgemein_</center>

|Feldbeschreibung | |
|---|---|
|Benutzer | Hier wird der jeweilige Benutzer ausgewählt. Wird das Feld leer gelassen, so wird für jeden Benutzer diese Einstellung verwendet.|
|Sprache | Hier wird der Sprachcode erfasst, der für den Beleg genutzt wird.|
|Berichts ID | Die jeweils gewünschte Berichts-ID. z.B. Bericht 204 für Verkaufsangebot.|
|Berichtsname | In Abhängigkeit der Berichts-ID wird hier der Berichtsname angezeigt.|
|Betreff | Hier kann ein individueller Betreff eingetragen werden. Zusätzlich kann als Platzhalter für die **Belegnummer %1** verwendet werden.|
|Email Absender | Hier kann eine spezifische E-Mail-Adresse eingetragen werden, die die E-Mail Adresse aus der Benutzer Einrichtung überschreibt.<br />Diese Einstellung ist nicht über die E-Mail-Schnittstelle Outlook steuerbar, da sich beim Versand das Default-Outlookkonto am Arbeitsplatz öffnet.|
|Bodytextdatei | Hier wird der Dateiname für den Bodytext ausgewählt. Dieser wird auf den Server unter com_tmp hochgeladen. Falls die Datei bereits vorhanden ist, wird sie überschrieben.|
|SMS Bodytextdatei | Hier wird der Dateiname für den SMS-Bodytext ausgewählt. Dieser wird auf den Server unter com_tmp hochgeladen. Falls die Datei bereits vorhanden ist, wird sie überschrieben.|
|Standardanhangsdatei 1 – 4 | Hier können für den Benutzer 1 - 4 Anhangs- Dateien voreingestellt werden. Diese wird auf den Server unter com_tmp hochgeladen. Falls die Datei bereits vorhanden ist, wird sie überschrieben.<br />**Die vier Anhänge werden in einem der nächsten Updates entfernt und durch die Anhangs Zeilen (s.u.) ersetzt.**|
|Zusätzlicher Ausgabeordner | Zusätzlich zum **Originalbeleg** (Speicherung in com_out) kann hier ein Ablageordner eingetragen werden, in dem eine Kopie abgelegt wird.<br />Ein Beispielszenario ist das Überführen der Belege in ein DMS-System, welche an einem bestimmten Ort erwartet werden.<br />Hier steht der Platzhalter %9 zur Verfügung, welcher im Pfad den Mandaten ersetzt. Wichtig ist das die Ordnerstruktur entsprechend dem angegeben Pfad schon existiert. Da der Pfad nicht automatisch erzeugt wird.|
|Dateiname | Hier kann ein individueller Dateiname für den Originalbeleg eingetragen werden. Dieser Eintrag überschreibt die Einstellung „Dateiname ist Belegnummer“ aus der Connector NAV Einrichtung. Zusätzlich zum „Freitext“ stehen Platzhalter zur Verfügung:<br />%1 Belegnummer<br />%2 Belegart<br />%3 Datum YYYYMMDD<br />%4 Zeit HHMMSS<br />%5 laufende Nummer der Jobliste<br />%6 Jobmodus<br />%7 Versand über<br />%8 Referenz<br />Bei der Namensgebung muss unbedingt beachtet werden, dass der Name eindeutig ist.<br />Andernfalls werden Originalbelege beim erneuten Versand überschrieben.<br />Nicht empfohlen: %2_%1.<br />Empfohlen: %2_%1_%5.|

#### Register Steuerung
![](/images/connectornav/benreport_einr_reg_steuerung.png)<center>_Connector NAV Benutzerbericht Einrichtung, Register Steuerung_</center>

|Feldbeschreibung | |
|---|---|
|Konfigurierte E-Mail Schnittstelle<br />Versand über | Die konfigurierte E-Mail Schnittstelle zeigt das erworbene E-Mail Produkt an. Alternativ kann man den E-Mail-Versand über die Schnittstelle SMTP steuern.|
|Outlook Silent | Für die E-Mail Schnittstelle Outlook kann hier festgelegt werden, ob der Outlook-Dialog sichtbar sein soll.|
|Qualifizierte Signatur | Dies dient der Voreinstellung je Bericht und Benutzer. Hier wird festgelegt, welchen Modus (mit/ohne Signatur) das System beim Fax/E-Mailversand vorschlagen soll.|
|HTML Bodytext | Hier kann man auswählen, ob man für diesen Vorgang einen HTML Bodytext voreingestellt hat.|
|Berichtsoptionen abfragen | Ermöglicht das automatische aufrufen der Standard Berichtsoptionen im Verlauf des Versandprozesses|
|Optionen Berichtsanfrageseite | Öffnet die Berichtsoptionen für den jeweiligen Bericht und erlaubt es Standardoptionen festzulegen, welche für den ausgewählten Bericht gelten.<br />Der Platzhalter %1 ist zwingend zu setzen, ansonsten ist ein Versand nicht möglich.|
|Optionen Berichtsanfrageseite Ausdruck | Siehe oben.<br />Die hier festgelegten Optionen gelten ausschließlich für das ausdrucken von Berichten.|
|Dokumentenlinks als Anhang | Über diese Funktion können hinterlegte Links zu einem Beleg als Anhang mitversendet werden.|
|Serververarbeitung | Über diese Funktion lässt sich einstellen, ob der Beleg über eine Hintergrundverarbeitung abgeschickt werden soll. Dazu ist eine Einrichtung im NAS / Aufgabenwarteschlangeposten nötig. Näheres dazu im entsprechendem Abschnitt.|
|Soforterzeugung | Hier kann eingestellt werden, ob der Beleg sofort (clientseitig) oder im Hintergrund erzeugt werden soll. Wir empfehlen diese Einstellung **bei nicht gebuchten sowie registrierten** Belegen oder bei Belegen, die eine **Benutzerinteraktion** benötigen (z.B. Angebote Nachfassaufgabe).<br />Folgende Belege können standardmäßig mit dem Connector NAV im Hintergrund erzeugt werden:<br />- Verkaufsangebot<br />- Verkaufsauftrag<br/>- Geb. Verkaufsrechnung<br />- Geb. Verkaufsgutschrift<br />- Einkaufsbestellung<br />- Rahmenbestellung<br />- Einkaufsanfrage<br />- Geb. Verkaufslieferung<br />- Reg. Mahnung<br />- Rahmenauftrag<br />- Geb. Einkaufsrechnung<br />- Geb. Einkaufslieferung<br />- Geb. Einkaufsgutschrift<br />- Reg. Lieferanmahnung<br />Darüber hinausgehende Integrationen benötigen ohne Soforterzeugung eine individuelle Programmierung.|
|Mit Freigabe | Mit dieser Option werden die Vorgänge solange nicht vom Hintergrundprozess verarbeitet, bis eine Freigabe über die Jobliste erfolgt.<br />Beispielsweise können Rechnungs-E-Mails erzeugt und vor dem Versand kontrolliert werden. Näheres dazu in der Dokumentation Connector NAV Basis.|
|Dialog an/aus | Hier kann gesteuert werden, für welchen Vorgang der Dialog sichtbar bzw. nicht sichtbar sein soll. Die Checkbox **Dialog** ist dabei allgemein für alle Vorgänge auszuwählen. Wird diese Checkbox ausgewählt, erfolgen keine individuellen Prüfungen mehr.|

#### Register Anhänge Zeilen
![](/images/connectornav/benreport_einr_reg_anh_zeilen.png)<center>_Connector NAV Benutzer Einrichtung, Register Anhänge Zeilen_</center>

Die vier Standardanhangsdateien wurden ergänzt um N-Anhänge, die pro Jobmodus vordefiniert werden können. Diese können über die oben genannte Aktion hinzugefügt werden. Im Reiter lässt sich das Dokument anzeigen und löschen. Außerdem können Sie bestimmen ob Anhänge mit dem Beleg zu einem Dokument vereint werden sollen und der entsprechende Anhang entweder oben oder unten angefügt wird.

#### Register pdfPaper
![](/images/connectornav/benreport_einr_reg_pdfpaper.png)<center>_Connector NAV Benutzer Einrichtung, Register pdfPaper_</center>

Nur sichtbar für das Modul pdfPaper. Näheres zur Einrichtung des Moduls pdfPaper finden Sie in der mitgelieferten Dokumentation.

|Feldbeschreibung | |
|---|---|
|Briefpapier Client/Server | Hier kann ein abweichendes Briefpapier zur globalen Einrichtung hinterlegt werden (z.B. bei abweichendem Sprachcode).|
|Briefpapier für den Vorgang Ausdruck Client/Server | Hier kann ein abweichendes Briefpapier für den Vorgang Ausdruck zur globalen Einrichtung hinterlegt werden (z.B. bei abweichendem Sprachcode).|
|Drucker für den Vorgang Ausdruck Client/Server | Hier kann ein abweichender Drucker für den Vorgang Ausdruck zur globalen Einrichtung hinterlegt werden. Dieser Drucker wird für den Jobmodus „Ausdruck“ verwendet.|

#### Register IncaMail
![](/images/connectornav/benreport_einr_reg_incamail.png)<center>_Connector NAV Benutzer Einrichtung, Register IncaMail_</center>

Nur sichtbar für das Modul IncaMail.

|Feldbeschreibung | |
|---|---|
|Senden als IncaMail | Hier kann eingestellt werden, ob der Beleg als IncaMail versendet werden soll.|

#### Register E-POST
![](/images/connectornav/benreport_einr_reg_epost.png)<center>_Connector NAV Benutzer Einrichtung, Register E-POST_</center>

Nur sichtbar für das Modul E-POST.

|Feldbeschreibung | |
|---|---|
|Senden als E-POSTBRIEF | Hier kann eingestellt werden, ob der Beleg als E-POST verschickt werden soll.|
|E-POST mit Deckblatt<br />E-POST Farbauswahl<br />E-POST elektronisch versuchen | Optionen, die für den Versand angegeben werden können. Je nach Einstellung variiert der Preis pro Beleg.|

