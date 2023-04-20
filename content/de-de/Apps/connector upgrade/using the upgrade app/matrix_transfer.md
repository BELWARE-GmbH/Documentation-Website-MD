---
title: "Upgrade der Kommunikationsmatrix (CON Communication Matrix)"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 6
---

## Upgrade der Kommunikationsmatrix (CON Communication Matrix)

### Einleitung

Bitte prüfen Sie die [Voraussetzungen](/de-de/apps/connector-upgrade/first-steps/introduction) bevor Sie fortfahren.

Die Kommunikationsmatrix des Connector NAV/BC enthält, falls gepflegt, Einrichtungsdaten die bestimmen, ob und wie Belege für einzelne Debitoren, Kreditoren oder auch Kontakte 
verabeitet werden.
In der Produkt-Reihe ***Connector 365*** (Business Central Versionen > 14), ist die Kommunikationsmatrix nicht mehr als eigene Tabelle vorhanden.
Stattdessen werden die ***Dokumentlayouts*** für gleichartige Einrichtungen verwendet.

Die **Connector Upgrade**-App stellt eine Funktion bereit, mit der Einrichtungsdaten der Kommunikationsmatrix mit den Dokumentlayouts synchronisiert werden können.
Zu beachten ist, dass die Anzahl an zu übertragenden Feldern zum Teil davon abhängig ist, welche ***Connector 365*** Apps zur Zeit des Upgrades installiert sind.
So wird beispielsweise die Leitweg-ID (XRechnung-Modul) aus der Kommunikationsmatrix nur übertragen, wenn die ***Connector 365 XRechnung*** App installiert ist.
Im Folgenden wird erläutert, welche Schritte gemacht werden müssen, um ein Upgrade der Kommunikationsmatrix zu den Dokumentlayouts durchzuführen.

### Durchführung des Upgrades

{{< notice warning Wichtig>}}
Bei der Übernahme der Kommunikationsmatrix wird vorausgesetzt, dass Debitoren und Kreditoren, welche in der Kommunikationsmatrix eingetragen sind,
mit der jeweils gleichen Nummer in der Business Central Umgebung angesprochen werden können.
{{</ notice >}}
<br>

Vergewissern Sie sich, dass die gewünschten "Connector 365 Apps" installiert sind.
Navigieren Sie anschließend über der Suchleiste zu der ***Connector 365 Einrichtung***

|![](/images/apps/Upgrade%20App/connector_einrichtung_suche.png)|
|-|

Auf der Seite ***Connector 365 Einrichtung***, klicken Sie auf ***Aktionen***.
Es sollte ein Button ***Transferiere Kommunikations-Matrix*** sichtbar sein.

|![](images/apps/Upgrade%20App/connector_transferiere_matrix.png)|
|-|

Anschließend öffnet sich eine neue Seite.

|![](images/apps/Upgrade%20App/connector_transfer_dialog.png)|
|-|

Auf dieser Seite werden alle Berichts-Ids zusammengetragen, welche in der Kommunikationsmatrix eingetragen sind.
Hier haben Sie die Möglichkeit einzustellen, welche Berichte Sie im Detail übertragen möchten. Auch können Sie festlegen, zu welcher Verwendung und zu welcher Berichts-Id die jeweiligen Einträge zugeordnet werden.
Es sind folgende Felder sichtbar:

|Feld|Bedeutung|
|-|-|
|Transferiere Eintrag|Gibt an, ob Einträge mit der Berichts-Id [Von Berichts-Id] übertragen werden sollen. Setzen Sie ein Häkchen, wenn Sie Einträge des entsprechenden Berichts übertragen wollen.|
|Von Berichts-Id|Gibt eine Berichts-Id an, welche in der Kommunikationsmatrix gefunden wurde.|
|Jobmode|Gibt den Jobmode für die Berichts-Id [Von Berichts-Id] aus der Kommunikationsmatrix an. {{< notice info "Hinweis zu XRechnung">}}Die Kommunikationsmatrix des Connector NAV/BC erlaubte für XRechnung Kombinationen mit den Jobmodi ***PDF*** und ***E-Mail***. Um diese Kombination darzustellen werden diese in Klammern an den XRechnung-Jobmodus angehängt. Beispiel: ***XRechnung (PDF)*** {{</ notice >}} |
|Zu Verwendung|Gibt an, für welche Verwendung der Eintrag aus der Kommunikationsmatrix in die Dokumentlayouts übertragen wird. Wenn die Verwendung anhand der Berichtsauswahlen gefunden wird, wird diese voreingestellt|
|Zu Berichts-Id|Gibt an, für welche Berichts-Id der zu transferiende Eintrag übertragen wird. Standardmäßig wird die gefundene Berichts-Id aus der Kommunikationsmatrix verwendet.|

{{< notice warning Wichtig>}}
Um die Dimension der verschiedenen Jobmodi in den ***Connector 365 Apps*** abzubilden, wird die ***Connector 365 Easy Batch*** App benötigt.
Diese erweitert die Dokumentlayouts um den Eintrag ***Jobmodus*** und ermöglicht Stapelversand analog zu der Funktionalität aus dem ***Connector NAV/BC***
<br>
Sollte die ***Connector 365 Easy Batch*** App auf dem System ***nicht*** installiert sein, so erhalten Sie möglicherweise Duplikate in den Dokumentlayouts, welche jeweils keine neue Funktionalität hinzufügen. 
In diesem Fall wird empfohlen, genau die Einträge auszuwählen, welche für die zukünftige Verarbeitung benötigt werden.
{{</ notice >}}

<br>

Klicken Sie OK, wenn Sie die Übertragung starten wollen.

Nach Beendigung der Übertragung erscheint eine Meldung:

|![](images/apps/Upgrade%20App/matrix_transfer_beendet.png)|
|-|