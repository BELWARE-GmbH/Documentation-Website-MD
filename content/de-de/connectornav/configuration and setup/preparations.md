---
title: "Vorbereitung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---

### Vorbereitung

{{< notice info >}}Bitte beachten Sie, dass auch Funktionen für Module beschrieben werden, deren Lizenz Sie nicht erworben haben. Diese sollten i.d.R. am Kontext erkennbar sein.{{< /notice >}}
####
Bitte geben Sie ein Verzeichnis im Netzwerk frei und nennen es z.B. „T611“. Legen Sie die benötigten Unterordner an. Die Namen der Ordner sind optional, dienen aber für eine bessere Übersicht bezüglich der Connector NAV Einrichtung.

![](/images/connectornav/config_ordner.png)

Hierbei sollte beachtet werden, dass die User volle Berechtigung für diese Ordnerstruktur erhalten. Wofür diese Ordner genutzt werden wird im Folgendem erklärt.

#### Die Installation des eDocPrintPro

Der Connector NAV erzeugt Belege als PDF-Dokumente. Für die Microsoft Dynamics NAV Versionen > 2009 R2 Classic kann der interne SAVEASPDF genutzt werden und es müssen keine weiteren Maßnahmen getroffen werden. Für alle anderen Versionen empfehlen wir den kostenlosen PDF-Druckertreiber der X.KEY GmbH.

![](/images/connectornav/installation_edoc_printpro.png)<center>_Abbildung: Druckereinstellungen eDocPrintPro, Reiter Über_</center>

Der Connector NAV ist getestet mit der eDocPrintPro Version 3.21.2.0. Der eDocPrintPro ist ein kostenloses Produkt zur Erzeugung von PDF-Dateien und kann als Alternative zur Funktion SAVEASPDF von NAV 2013 R2 genutzt werden. Installationsanweisungen und mehr finden Sie unter 
[http://wiki.xkey.at/doku.php?id=edocprintpro_pdf_und_pdf_a](http://wiki.xkey.at/doku.php?id=edocprintpro_pdf_und_pdf_a)

Für die Installation des eDocPrintPro führen Sie folgende Schritte durch (Auszug aus der XKEY WIKI):

##### Alle Versionen vor 3.18.0:

Vor jeder Neuinstallation (auch UPDATES) müssen alle bestehenden Versionen deinstalliert werden!

##### Versionen ab 3.18.0:

Durch die Verwendung einer neuen Setup-Software ist es mit der aktuellen Version für bereits installierte Versionen ab 3.18.0 nicht mehr erforderlich die Software vor der Installation der neuen Version manuell zu deinstallieren. Eine bereits installierte Version (ab 3.18.0) wird erkannt und automatisch vor der Neuinstallation entfernt. Durch die Installation wird dem System ein virtueller Drucker hinzugefügt der neben PDF auch andere Formate wie TIFF, JPG und andere erzeugen kann.

Empfehlung um schon im Vorfeld Supportfälle zu vermeiden: 
- Entfernen Sie bitte alle nicht für Sie notwendigen sonstigen PDF Drucker. Auch „alte“ Versionen des eDocPrintPro! 
- Prüfen Sie ob Sie NUR die aktuelle Version von GhostScript installiert haben und entfernen Sie nicht benötigte „alte“ Versionen.

1. Download des Installations-ZIP-Paketes von [www.pdfprinter.at](https://www.pdfprinter.at/)
2. Im Download-Ordner Doppelklick auf die .ZIP-Datei
3. Ausführen der Setup.exe
4. Folgen Sie den Anweisungen am Bildschirm

Ein gemeinsames Setup für die 32bit und 64bit Version statt Einzelsetup´s 
Die Setups und EXE-Dateien sind signiert – Verisign Class 3 – Code Sign Zertifikat!

eDocPrintPro scheint dann als Drucker in Ihrer Druckerliste auf und dort können Sie dann auch die Konfiguration (Druckeinstellungen) starten.

#### Zusatzhinweise OfficeMaster für E-Mail und Fax

Bei der Lizenzierung der Schnittstelle OfficeMaster müssen folgende Einstellungen im Filegateway eingerichtet werden. Dabei beziehen sich die Ordnernamen auf die Ordner in der Dokumentation Einrichtung und Konfiguration. Die Einstellungen finden Sie unter: Messaging Server Konfiguration -> Komponentenstatus -> File Gateway -> Konfiguration anzeigen.
![](/images/connectornav/installation_officemaster.png)<center>_OfficeMaster Filegateway, Einstellungen Allgemein_</center>

#### Wichtige Neuerung zum File-Handling

Mit dem Connector NAV Update auf die Version 7.01.125 wurde das File-Handling komfortabler gestaltet. Das Vorbelegen von Anhängen (z.B. in der Benutzerberichteinrichtung) erlaubt es dem Benutzer nun auch, lokale Dateien auszuwählen. Die ausgewählte Datei wird automatisch auf dem Server unter dem Pfad **com_tmp** hochgeladen. Das Gleiche gilt für den Wechsel von Anhängen oder Bodytexten im Dialog.

Das Anzeigen von Anhängen (z.B. aus der Jobliste) benötigt keinen direkten Zugriff auf die Netzwerkfreigabe mehr. Die Datei wird vom Server lokal auf den Arbeitsrechner des Benutzers runtergeladen und geöffnet. Um die Häufung temporär abgelegter Dateien zu vermeiden, erfolgt anschließend ein Hinweis, ob der tmp-Ordner gelöscht werden soll. Dieser Ordner wird beim Runterladen automatisch unter %temp% des Benutzers erzeugt und ist unter normalen Umständen nicht für den Benutzer sichtbar. Näheres unter: Benutzerbericht Einrichtung.





