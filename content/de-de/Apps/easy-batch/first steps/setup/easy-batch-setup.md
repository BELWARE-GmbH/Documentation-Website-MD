---
title: "Easy Batch Einrichtung"
date: 2022-08-17T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
## Einrichtung

### Easy Batch Einrichtung

Um zur Easy Batch Einrichtung zu gelangen, öffnen Sie einfach die Suche und geben dort **Connector 365 EInrichtung** ein.
Dort finden Sie den Reiter **Easy Batch Einrichtung**.

Grundsätzlich werden alle Belege über Easy Batch im Hintergrund verarbeitet.
Über die Easy Batch Einrichtung können Sie allerdings steuern, welche Belege zu welchem Zeitpunkt verarbeitet werden sollen.

![](images/apps/Easy_Batch/de-de/app_setup.png)

In der Easy Batch Einrichtung sind alle gebuchten Belegarten hinterlegt, welche mit der App verarbeitet werden können.

Im Feld **Verarbeitungszeit** können Sie eine feste Zeit hinterlegen, zu welcher Belege dieser Art verarbeitet werden. Wenn Sie dieses Feld leer lassen, werden diese Belege immer sofort verarbeitet.

Über das Feld **Automatisierte Verarbeitung** können Sie festlegen, dass Belege dieser Art automatisch zur Verarbeitung eingestellt werden, sobald diese gebucht werden.
Bei Nutzung dieser Einstellung für ungebuchte Belege wie Verkaufsaufträge werden diese zur eingestellten Zeit zur Verarbeitung eingestellt, sobald diese freigegeben sind.

#### Ein Beispiel zur praktischen Anwendung:
Sie wollen gebuchte Verkaufsrechnungen manuell als Stapel versenden, der Haken für die automatisierte Verarbeitung ist also nicht gesetzt. Ist außerdem im Feld Verarbeitungszeit keine Zeit eingetragen, werden die gebuchten Verkaufsrechnungen sofort versandt, nachdem sie markiert wurden und der Stapelversand aktiviert.
Ist dagegen im Feld Verarbeitungszeit eine Zeit eingetragen, so werden die Rechnungen im Stapelversand zunächst in die Liste ["Offene Aufgaben"](de-de/apps/easy-batch/working-with-easy-batch/open-tasks/) verschoben und erst zur ausgewählten Zeit tatsächlich versandt.

Wollen Sie Sich die manuelle Auswahl der Berichte zum Versand ersparen, so setzen Sie den Haken für die automatisierte Verarbeitung. Gebuchte Verkaufsrechnungen, um beim Beispiel zu bleiben, werden dann verarbeitet, sobald sie aus einer Verkaufsrechnung oder einem Auftrag durch Buchen erzeugt werden.
Auch hier gilt: ist keine Verarbeitungszeit gesetzt, werden die Berichte sofort bei Buchung versandt. Ist dagegen eine Verarbeitungszeit eingetragen, werden auch bei automatischer Verarbeitung die Berichte zunächst in die Liste ["Offene Aufgaben"](de-de/apps/easy-batch/working-with-easy-batch/open-tasks/) eingetragen und zur ausgewählten Zeit tatsächlich versandt.

Weiterhin wichtig für die Funktion der App ist die Einrichtung der [Dokumentlayouts](de-de/apps/easy-batch/first-steps/setup/document-layouts/).