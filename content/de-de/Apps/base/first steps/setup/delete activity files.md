---
title: "Speicherbedarf reduzieren"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---

### Löschaktion für archivierte Dateien

Das Speichern der Belegdateien in der Aktivitätenliste ist zunächst mit dem Nachteil verbunden, dass der Speicherplatzbedarf der Business Central Datenbank ständig anwächst. 
Um dem entgegenwirken zu können, ist ab Version 2.4.0.0 der Base App in der Connector 365 Einrichtung das Menü Aktionen zu sehen.
![](/images/apps/Base/base_einrichtung_aktionen.png)

Bei Öffnen des Menüs erscheint die Funktion "Aktivitätendateien löschen".
![](/images/apps/Base/base_einrichtung_aktionen2.png)

Nach Auswahl der Funktion erscheint ein Eingabefenster, in dem das Startdatum (älteres Datum) für die Löschaktion gewählt werden kann:
![](/images/apps/Base/base_loeschen_start.png)

Nach Ausfüllen und Bestätigen durch OK erscheint das Eingabefenster für Auswahl des Enddatums (jüngeres Datum):
![](/images/apps/Base/base_loeschen_ende.png)

Nachdem hier das Datum festgelegt und mit OK bestätigt wurde, wird eine Bestätigung für den Löschvorgang abgefragt:
![](/images/apps/Base/base_loeschen_bestaetigung.png)

Nach Bestätigen des Dialogs werden alle Belegdateien in der Aktivitätenliste, die im ausgewählten Zeitraum erzeugt wurden, aus der Liste gelöscht.
