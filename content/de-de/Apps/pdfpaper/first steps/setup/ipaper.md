---
title: "iPaper"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Einrichtung

### iPaper

Damit die erstellen PDFs mit dem korrekt Briefpapier versehen werden können, muss zunächst der iPaper korrekt eingerichtet werden. Dies fängt mit dem Ablageort des Briefpapiers an.

#### Briefpapierablage

Sämtliche Briefpapiervorlagen müssen im gleichen Ordner hinterlegt sein, welcher der Software bekannt gegeben wird. Ein hinterlegtes Briefpapier muss sich im PDF-Format befinden.

Den Ordner finden Sie wie folgt:

Rufen Sie die Nutzeroberfläche der Serverversion auf, dies erfolgt über die Windowssuche oder indem Sie die Software aus dem Ordner indem sie installiert wurde ausführen.
Rechtsklicken Sie auf das iPaper-Icon in der Symbolleiste und wählen Sie **"Konfiguration"**. Es öffnen Sich die Optionen des iPapers. Wenn dies das erste mal ist, dass Sie die Software ausführen, dann sollten Sie direkt auf das Zahnrad-Symbol klicken können um die Einstellungen zu öffnen. Sollte der Dienst schon laufen, müssen Sie ihn zuvor über **"Stop"** anhalten.

In den Einstellungen können Sie den Reiter **"Gemeinsame Ordner"** finden. Dort ist der Ordner für die Ablage Ihrer Briefpapiere angegeben, dieser enthält schon ein paar Beispielbriefpapiere. Stellen Sie sicher, dass dieser Ordner eine Netzwerkfreigabe erhält.

#### Verarbeitung
Damit iPaper korrekt funktioniert, muss ein Eingangs- und Ausgangsordner definiert werden und entsprechend eingerichtet werden.

Klicken Sie auf **"Ordner hinzufügen"** und geben Sie dem Ordner einen Namen und definieren Sie anschließend einen Eingangsordner. Setzen Sie nun den Haken bei allgemeinem Ausgangsordner und definieren Sie diesen ebenfalls. Stellen Sie sicher das beide Ordner eine Netzwerkfreigabe erhalten.

Sie sollten ebenfalls einen Fehler Ordner konfigurieren, so dass schnell Ursachen festgestellt werden können, falls in der Verarbeitung etwas schief läuft.

Wählen Sie nun den Reiter **"Optionen"** aus und stellen Sie ein dass der iPaper XML-Dateien verarbeitet. Andernfalls findet keine Verarbeitung statt.

Damit ist der iPaper eingerichtet. Bevor Sie die Einrichtung schließen, starten Sie die Software nun.

Als nächstes muss die Connector 365 PdfPaper App konfiguriert werden, die Anleitung für diesen Schritt finden Sie [hier](/de-de/apps/pdfpaper/first-steps/setup/pdfpaper)
