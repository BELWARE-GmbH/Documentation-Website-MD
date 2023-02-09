---
title: "Statusprüfung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: true
weight: 6
---
## Statusprüfung

### Statusanforderung

Es gibt zwei Möglichkeiten, einen Status zu einem Fax-Vorgang anzufordern:
 - Manuelle Anforderung über ***Connector 365 Aktivitätenliste***
 - Nutzung der Aufgabewarteschlangenposten

### Statusanforderung über die Aktivitätenliste

Über die ***Connector 365 Aktivitätenliste*** haben Sie die Möglichkeit, einzelne Jobs manuell auf dessen Status zu prüfen. 
Navigieren Sie dazu zu der Seite ***Connector 365 Aktivitätenliste*** (Mehr über die Aktivitätenliste finden Sie unter [Protkollierung](/de-de/apps/retarus-fax/first-steps/working-with-c365-fax/logging/))
Anschließend klicken Sie auf die Aktion ***Fax-Statusanforderung*** über den Menü-Punkt ***Aktionen***.

|![](images/apps/Retarus_Fax/get-status-manually.png)|
|-|

Anschließend werden Statusinformationen zum selektierten Vorgang im Hintergrund geladen und abgespeichert.

### Statusanforderung im Hintergrund über die Aufgabewarteschlange

Bei der Installation von ***Connector 365 Fax*** wird automatisch eine Aufgabenwarteschlange eingerichtet, welche automatisch protokollierte Fax-Einträge durchgeht, und einen Status vom Anbieter anfordert.
Dabei werden Vorgänge übersprungen, welche bereits einen finalen Status haben, oder solche Einträge, die keine Fax-Anforderungs-Id besitzen, das heißt Vorgänge, welche nicht erfolgreich an den Anbieter verschickt worden sind.
Um sich die Warteschlange anzeigen zu lassen, so können Sie in die Suchleiste ***Aufgabewarteschlangenposten*** eingeben und anklicken.

|![](images/apps/Retarus_Fax/job-queue.png)|
|-|

Durch Klicken auf ***Bearbeiten*** können Sie gemäß der Microsoft Standardfunktionalität bezüglich Warteschlangen selbst definieren, zu welchen Zeiten und mit welchen Pausen die Aufganwarteschlange laufen soll.

### Status in der Aktivitätenliste

Ein Eintrag in der ***Connector 365 Aktivitätenliste*** kann drei Zustände haben.
Im Folgenden eine Auflistung der möglichen Zustände bzw. Inhalte des Feldes ***Status*** aus der Aktivitätenliste.

|Status|Bedeutung|
|-|-|
| + | Der Anbieter hat zurückgemeldet, dass das eingehende Dokument erfolgreich an den Empfänger geschickt wurde|
| - | Beim Fax-Versand ist ein Fehler aufgetreten.|
| _ (leer) | Es ist (noch) kein Status vorhanden |

{{< notice info Hinweis >}}
Bei einem Status, der einen Fehlversand beschreibt ('-'), ist der verursachende Fehler zunächst in der ***Connector 365 Aktivitäten***-Liste nicht ersichtlich. Vielmehr beschreibt der Status in der Aktivitätenliste eine Zusammenfassung von einem oder beliebig vielen Statusinformationen zu einem Vorgang. 
Klicken Sie auf den Inhalt des Feldes ***Status***, also im Fehlerfall zum Beispiel auf das **-**, um die Status-Liste zum Vorgang anzuzeigen.
{{</ notice >}}

### Präzise Statusinformationen in Rückmeldungsübersicht