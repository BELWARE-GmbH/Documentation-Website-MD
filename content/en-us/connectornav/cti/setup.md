---
title: "Einrichtung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---

#### Einrichtung

Voraussetzung ist, dass die Software ihrer TAPI-fähigen Telefonanlage installiert ist und bereits läuft.

**Zur Installation bekommen Sie einen Zip-Ordner von uns zur Verfügung gestellt, welcher alle nötigen Dateien des TapiMasters enthält. Diesen können Sie im Kundenportal unter Downloads/Sonstige Downloads abrufen.** Je nachdem was für eine Telefonanlage Sie haben (Multi/Single Line) gibt es eine andere Vorgehensweise bei der Einrichtung.

##### Single Line (Client)

Öffnen Sie den Zip-Ordner, hier starten Sie nun die Anwendung FCTICLNT. Nun sollten Sie unten rechts in die Windowsleiste das Programm CTI-Client finden. Rechtsklicken Sie hierauf und klicken anschließend auf Netzwerkverbindung. In dem sich öffnenden Fenster haben Sie jetzt oben die Möglichkeit, die Leitung zu wählen, welche verwendet werden soll. Außerdem ist es wichtig hier die eigene Durchwahl zu hinterlegen.

![](/images/connectornav/cti/einr_client.png)<center>Netzwerkeinstellungen des Client</center>

Haben Sie die Einstellungen vorgenommen, bestätigen Sie das Fenster mit OK. Anschließend klicken Sie erneut mit rechts auf das Programm CTI-Client, wählen diesmal jedoch Einstellungen aus. Hier ist es wichtig, unter dem Reiter BELWARE CTI den Ablagepfad für die CTI-Dateien zu hinterlegen. Dieser Schritt muss für jeden Rechner bzw. Nutzer der das CTI Modul einsetzen will wiederholt werden.

![](/images/connectornav/cti/einr_client2.png)<center>Einstellungen Reiter “BELWARE CTI”</center>

##### Multi Line (Server)

Auch wenn Sie eine Multi Line Tapi einsetzen, finden Sie alles benötige in dem Zip-Ordner. Öffnen Sie zunächst das Setup und installieren Sie die Software, dies muss unbedingt auf dem Telefonieserver vorgenommen werden und Server/Nutzer auf dem NAV bzw. CN installiert ist sollte Zugriff erhalten. Anschließend finden Sie auf Ihrem Desktop eine Verknüpfung zu der TapiMaster Steuerkonsole, starten Sie diese.

![](/images/connectornav/cti/einr_server.png)

Bevor Sie weitere Einstellungen vornehmen, müssen Sie in den Anlageeinstellungen zunächst über „Aktualisieren“ die Telefonanlage laden. Stellen Sie als erstes Ihre Vorwahl über die Anlageeinstellungen ein. Anschließend öffnen Sie das Register für Durchwahlen und legen diese dort ebenfalls fest. Sie sollten ebenfalls die Durchwahlen auf den Leitungen entfernen, welche die das CTI-Modul nicht einsetzen werden.

![](/images/connectornav/cti/einr_server2.png)

Dann müssen Sie nun noch über die TAPI-Sonderbehandlung aktivieren, dass Nummern das einfache kanonische Format benutzen.

![](/images/connectornav/cti/einr_server3.png)

Zum Abschluss müssen Sie nun noch in der DBVSPLUGIN.DLL, welche im Installationsverzeichnis zu finden ist, festlegen in welchem Pfad die Gesprächsdaten gespeichert werden sollen, diese sollte zu dem Pfad für Ihr CTI Modul führen.

**Hinweis:** *Die .DLL wird erst erzeugt, wenn die Steuerkonsole zum ersten Mal geöffnet wurde.*

![](/images/connectornav/cti/dll.png)

##### Benutzereinrichtung

In NAV finden Sie im Rollencenter in der oberen Leiste nun den Punkt CTI. Auf der Seite CTI-Client haben Sie nun die Möglichkeit, Benutzer anzulegen und deren Telefonie in NAV anzuzeigen. Hier ist es auch wieder wichtig die korrekte Durchwahl einzutragen.

In der Einrichtung des Connector NAV muss ebenfalls im Reiter „CTI“ der Pfad angegeben werden. Dieser muss mit dem im Client hinterlegten Pfad identisch sein. Anschließend muss noch ein Pfad für das Archiv angegeben werden.

![](/images/connectornav/cti/einr_benutzer.png)<center>Übersicht Einrichtung Connector NAV mit ausklappten CTI Reiter</center>

In der Benutzereinrichtung lässt sich pro User verwalten wer sehen kann, wer gerade telefoniert, so können Sie z.B. Gruppen für die verschiedenen Abteilungen in Ihrem Unternehmen erstellen und diese den verschiedenen Usern zuweisen. Aktiviert wird die CTI-Funktion indem man den Haken bei „CTI nutzen“ setzt. Ist der Haken gesetzt öffnet sich der CTI-Client automatisch beim Start von NAV. Hier lässt sich auch festlegen, welche Karte bei einem Anruf geöffnet wird. Dies ist entweder die Standard Kontaktkarte oder die des Connector NAV

![](/images/connectornav/cti/einr_benutzer2.png)