---
title: "XRechnung erzeugen"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 5
---

##### XRechnung erzeugen

![](/images/connectornav/data_exchange/xrech6.png)

Da wir nun den **XRechnungs-**Eintrag für **Gilde Jupiter Versicherungs AG** für den Jobmodus **PDF** angelegt haben, können wir aus der markierten Rechnung **103003** über die Schaltfläche **PDF** eine XRechnung erzeugen.
Alternativ geht dies auch über die Schaltfläche **Stapellauf**, insofern der betreffende Eintrag in der Kommunikationsmatrix für den Stapelmodus markiert worden ist:

![](/images/connectornav/data_exchange/xrech7.png)

Sobald eine der oben genannten Schaltflächen aktiviert worden ist, wird aus der markierten Rechnung eine **XRechnung** erzeugt.

Sollten Sie die Dialog-Funktion über die **Benutzerberichtseinstellungen** eingeschaltet haben, so öffnet sich vor der Erzeugung noch das Dialogfenster, in dem Sie die vorgenommen Einstellungen noch einmal einsehen können.

![](/images/connectornav/data_exchange/xrech8.png)

Die erzeugte Datei wird anschließend an ein **Validierungstool** auf einen externen Server, sofern Sie keinen eigenen Server eingerichtet haben (siehe **Einrichtung**), gesendet, um dort auf Konformität zu den formalen Vorlagen getestet zu werden. Sollten Sie in der
**Einrichtung** das Häkchen für **XRechnung prüfen** herausgenommen haben, so entfällt der Validierungsprozess.  
Der Status der Validierung ist in dem zugehörigen Eintrag in der Jobliste zu entnehmen.

![](/images/connectornav/data_exchange/xrech9.png)

Das ‚**+‘** gibt an, dass die erzeugte XRechnung erfolgreich validiert wurde.

Um die erzeugten Dateien anzeigen zu lassen, drücken Sie auf die Schaltfläche **Dateien anzeigen.**

![](/images/connectornav/data_exchange/xrech10.png)

Nun öffnet sich eine Ansicht der zum Auftrag zugehörigen Dateien.

![](/images/connectornav/data_exchange/xrech11.png)

Wie an dem Dateinamen zu erkennen ist, werden die erzeugten Dateien in dem Ordner **COM_OUT** abgelegt.

![](/images/connectornav/data_exchange/xrech12.png)

In diesen Ordner wird neben der XRechnung und der PDF-Datei, auch ein Prüfbericht abgelegt. Sollte in der Einrichtung der **PEPPOL Ablageorder** eingerichtet worden sein, so werden die XRechnung-bezogenen Dateien in dem hinterlegten Ablageorder gelegt. Diese Dateien bekommen hier die Jobnummer als Präfix vorangestellt. In unserem Beispiel war dies die Jobnummer **4044**.  

**Hinweis:** *Der Dateiname für die jeweiligen Berichte kann in den Benutzerberichtseinstellungen eingerichtet werden.*

Die Datei **4044_Geb.VK-RG103003.PDF** entspricht der Rechnung im **PDF**-Format.  
Die Datei **4044_Geb.VK-RG103003.XML** ist die erzeugte **XRechnung**-Datei.  
Die Datei **4044_Geb.VK-RG103003.XML_report.html** ist der zugehörige Prüfbericht, zu erkennen an der Endung **„_report.html“**  
Öffnen Sie die Datei **4044_Geb.VK-RG103003.XML_report.html** um das Validierungsergebnis der XRechnung einzusehen.  
Dies können Sie entweder aus dem **COM_OUT**-Ordner, oder aus der Navision / Business Central 365 - Dateiansicht wie im folgenden Bild erkennbar, durch die Schaltfläche **Datei anzeigen** erledigen.

![](/images/connectornav/data_exchange/xrech13.png)

In diesem Beispiel öffnet sich der Prüfbericht in dem **Firefox**-Browser.

![](/images/connectornav/data_exchange/xrech14.png)

Aus diesem Ausschnitt des Prüfberichts geht hervor, dass die Datei konform zu den formalen Vorgaben ist.