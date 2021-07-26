---
title: "Das Modul pdfPaper Server"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---

#### Das Modul pdfPaper Server

##### Die Installation des iPaper.NET-Server

![](/images/connectornav/pdfpaper/server_info.png)
<center>iPaper.NET-Server Info</center>

Der Connector NAV ist getestet mit der aktuellen iPaper FM Version. Wir empfehlen, regelmäßig den Blog unter <http://www.pdfblog.at/category/ipaper/> zu verfolgen.

##### Die Konfiguration

Damit der Connector NAV und iPaper FM richtig miteinander kommunizieren können, müssen in der Connector NAV pdfPaper Einrichtung sowie in der iPaper FM Konfiguration bestimmte Einstellungen übereinstimmen.

###### Die Connector NAV pdfPaper Einrichtung

###### Aktionen

![](/images/connectornav/pdfpaper/einr_aktionen.png)<center>Connector 365 BC pdfPaper Einrichtung, Aktionen</center>

|Aktionen | |
|---|---|
| Briefpapier anzeigen | Mit dieser Aktion lassen sich die hinterlegten Briefpapiere anzeigen. |

###### Register pdfPaper Server

![](/images/connectornav/pdfpaper/einr_reg_server.png)<center>Connector 365 BC pdfPaper Einrichtung, Register pdfPaper Server</center>

**Eingangsordner:**
Der Connector 365 BC erzeugt bei einem Vorgang für iPaper FM eine externe XML-Steuerdatei. Diese wird von iPaper FM im Eingangsordner erwartet.

**Ausgangsordner:**
Erfolgreich verarbeitete PDF-Dokumente werden von iPaper FM in einen Ausgangsordner kopiert. Dieser sollte der „com_out“ Order aus der Connector NAV Einrichtung sein.

**Fehlerordner:**
Wenn PDF-Dokumente nicht von iPaper FM verarbeitet wurden, wird eine XML-Datei mit Fehlerinformationen im Fehlerordner abgelegt.

**Vorschauordner:**
Dieser Ordner dient dazu, temporäre PDF-Dokumente für die Aktion *pdfPaper Preview* zu erzeugen.

**PDF Ebene**
Hier können Sie den Grad der PDF/A Verschlüsslung festlegen, zur Auswahl stehen PDF/A-1b, PDF/A-3b und keine Verschlüsselung.

**Druckserver**
Durch diesen Schalter legen Sie fest ob ein Druckserver im Einsatz ist.

**Druckserver Eingangsorder**
Wird ein Druckserver von Ihnen eingesetzt, so können Sie hier festlegen wo zu druckende Belege abgelegt werden sollen.

**PDFA ZUGFeRD Pfad**
Legt den Pfad fest an dem nach ZUGFeRD Standard erstellten XML-Dateien abgelegt bzw. archiviert werden.

**Verarbeitungszeit (in Sek.):**
Hier wird die Zeit eingetragen, die der Connector NAV warten soll, bis das PDF-Dokument im Ausgangsordner erscheint. Wenn das Dokument nach Ablauf der Zeit nicht gefunden wird, ist der Vorgang fehlgeschlagen. Die Zeit richtet sich danach, wie groß /wie viele Seiten / wie komplex die Berichte sind. Als Durchschnittswert empfehlen wir 30 Sekunden.

**Briefpapier:**
Wählen Sie hier das allgemein gültige Briefpapier aus, das zu jedem Vorgang beigemischt werden soll. Legen Sie auch hier in Ihrem freigegebenen Netzwerk einen Ordner an (hier VORLAGEN) wo Sie alle Geschäftspapiere oder sonstige PDF-Dateien zum Mischen hinterlegen.

**Briefpapier für den Vorgang Ausdruck:**
Wählen Sie hier das allgemein gültige Briefpapier aus, das zu jedem Druckvorgang beigemischt werden soll.

**Drucker für den Vorgang Ausdruck:**
Tragen Sie hier den Drucker ein, der den Beleg beim Druckvorgang ausdrucken soll.

**Automatisches drehen**
Für den Fall dass Dokumente durch z.B. Anhänge um Seiten im Querformat erweitert werden, lässt sich hier festlegen, dass Sie bei Verarbeitung in das Hochformat gedreht werden.

##### Aktivieren der iPaper Lizenz

Nach der Installation des iPapers läuft dieser zunächst unter einer 30-tägigen Testversion, welche bis zum Ablauf ein volles Nutzen des iPapers erlaubt. Nach Ablauf der 30 Tage kann der iPaper zwar weiterhin genutzt werden, jedoch werden ab dem Zeitpunkt auf erstellte PDF-Dokumente ein Stempel gesetzt. Auf Testsystemen stellt dies meist kein Problem dar, spätestens bei Übernahme in das Livesystem sollte der iPaper vollständig aktiviert werden.

![](/images/connectornav/pdfpaper/ipaper_aktivierung.png)

Um Ihre Lizenz zu aktivieren, benötigen Sie den Product Activation Manager (PAM). Diesen können Sie entweder direkt über die Windowssuchfunktion aufrufen oder Sie rechtsklicken auf das iPaper Symbol in Ihrer Symbolleist und klicken anschließend auf Info und dann aktivieren.

![](/images/connectornav/pdfpaper/ipaper_aktivierung2.png)

Im PAM sehen Sie nun eine Auflistung der installierten iPaper Version und eine dazugehörige Demolizenz. Um die Lizenz voll zu aktivieren, klicken Sie auf „Activate application“. Es öffnet sich ein neuer Dialog in dem Sie unter „Activate online“ Ihre Lizenzdaten eintragen können. Diese haben Sie von uns während der Auslieferung erhalten.

Nach Bestätigung des Dialogs öffnet sich ein weiteres Fenster, hier sehen Sie alle Lizenzen, die zu Ihrem Account gehören, wählen Sie eine passende Lizenz aus und bestätigen Sie den Dialog. Sie sollten nun neben Ihrer Demolizenz eine weitere Lizenz in der Aufstellung vorfinden. Ein optionaler Schritt ist nun noch die Demolizenz auszuwählen und diese mit „Remove license“ zu entfernen.

Sollten Sie Unterstützung in diesem Prozess benötigen können Sie sich gerne an uns wenden, wir helfen Ihnen gerne.

###### Lizenzen bewegen

iPaper Lizenzen sind immer an einen Rechner gebunden, da es aber vor kommt das Rechner ausgetauscht werden, haben Sie hier die Lizenz zu „moven“.

Öffnen Sie dazu wieder den PAM und wählen Sie die Lizenz aus welche Sie auf einen anderen Rechner bewegen wollen und klicken Sie auf „Move license“, dies bewegt die Lizenz wieder in den Pool Ihrer anderen Lizenzen und kann somit wieder wie eine normale Lizenz aktiviert werden.

##### Die iPaper.NET-Server Konfiguration

Über die Desktopleiste finden Sie, falls iPaper FM gestartet ist, eine Feder mit der Sie per „Rechte-Maus-Klick“ auf die Konfigurationen zugreifen können.

![](/images/connectornav/pdfpaper/net_server_config.png)<center>iPaper.NET-Server, Konfiguration öffnen</center>

Anschließend sieht man eine Übersicht der eingerichteten Ordner. Bevor ein Ordner eingerichtet wird, muss man den Vorlageordner (Briefpapier-Ablage) definieren. Zum Ausführen bitte die rechts unten im Bild gezeigte Aktion (Allgemeine Einstellungen) ausführen.

![](/images/connectornav/pdfpaper/net_server_config2.png)<center>iPaper.NET-Server, Konfiguration</center>

###### Register Gemeinsamer Ordner

![](/images/connectornav/pdfpaper/net_server_config_gem_ordner.png)<center>iPaper.NET-Server Konfiguration, Reiter Gemeinsamer Ordner</center>

Wählen Sie den Briefpapier-Ordner aus, den Sie für die Connector NAV pdfPaper Einrichtung angelegt haben. Beim Mischen der Dokumente greift der iPaper.NET-Server auf diesen Ordner zu. Alle Briefpapier-Vorlagen müssen hier hinterlegt werden.

Anschließend wird über die Aktion *Ordner hinzufügen* ein neuer Ordner angelegt.

###### Register Generell

![](/images/connectornav/pdfpaper/net_server_reg_generell.png)<center>iPaper.NET-Server, Register Generell</center>

Übertragen Sie die pdfPaper Einrichtung aus dem vorangegangenen Kapitel in die entsprechenden Felder.

###### Register Optionen

![](/images/connectornav/pdfpaper/net_server_reg_optionen.png)<center>iPaper.NET Server, Register Optionen</center>

Übertragen Sie die Einstellungen auf dem Bild. Die zu verarbeitenden Dateien sind XML-Dateien. Diese werden automatisch vom Connector NAV erzeugt. Das Dokument muss anschließend in den Archiv-Ordner verschoben werden, wo Sie zur Weiterverarbeitung per E-Mail/Fax genutzt werden.

###### Preview-Ordner

Nachdem die Haupteinrichtung erfolgt ist, legen Sie einen neuen Ordner an. Folgende Einstellungen müssen für den Preview-Ordner vorgenommen werden:

![](/images/connectornav/pdfpaper/net_server_preview.png)<center>iPaper.NET Server, Register Generell</center>

Tragen Sie anschließend unter dem Reiter Optionen die gleichen Einstellungen ein wie oben im Bild.

Schließen Sie die Konfiguration und starten Sie den iPaper.NET-Server.