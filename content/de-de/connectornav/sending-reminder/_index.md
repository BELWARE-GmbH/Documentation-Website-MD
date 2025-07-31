---
title: "Mahnungsversand"
date: 2023-08-28
description: 
draft: false
collapsible: true
weight: 10
---

# Mahnungsversand
(enthalten seit August 2023)

## Automatisches Anhängen von Rechnungen bei Mahnungsversand

Wenn Sie Mahnungen an Ihre Kunden verschicken, stellen Sie oft fest, dass diese nach Erhalt der Mahnung eine Kopie der betreffenden Rechnung(en) anfordern.
Der Connector NAV bietet eine Funktion, um angemahnte Rechnungen automatisch an die E-Mail der Mahnung anzufügen.
Im Folgenden wird beschrieben, wie Sie die genannte Funktion des automatischen Anhängens von Rechnungen an Mahnungen einrichten und ausführen können.

## Einrichtung

Navigieren Sie zunächst in die Connector NAV Einrichtung. Diese finden Sie unter **Abteilungen -> Connector NAV**:
|![](images/connectornav/sending-reminder/de/setup.png)|
|-|

Öffnen Sie anschließend den Reiter **Global**:
|![](images/connectornav/sending-reminder/de/setup-global.png)|
|-|

Suchen und aktivieren Sie das Feld **Rechnung als Anhang beim Mahnungsversand**:
|![](images/connectornav/sending-reminder/de/setup-enable-field.png)|
|-|

Die Einrichtung ist an dieser Stelle abgeschlossen.

{{< notice warning Hinweis >}}
Bitte achten Sie darauf, dass in der **Connector NAV Einrichtung** ein gültiger Pfad für **Pfad (com_tmp)** eingetragen ist:
<br>
![](images/connectornav/sending-reminder/de/com-temp.png)
**Pfad (com_tmp)** wird nämlich für für die Dateiablage von angehängten Rechnungen genutzt. 
Sollte kein gültiger Pfad hinterlegt sein, kann es zu Fehlern kommen:
<br>
{{< /notice >}}

## Anwenden der Funktion

Sobald Sie die Einrichtung abgeschlossen haben, versenden Sie ganz einfach registrierte Mahnungen mithilfe des **Connector NAV**s.
Navigieren Sie dazu zu einer Seite der Registrierten Mahnungen, zum Beispiel die **Reg. Mahnung Auswahl** der **Connector 365 Templates**:

|![](images/connectornav/sending-reminder/de/template-reminders.png)|
|-|

Führen Sie die Connector NAV Versandfunktion aus:

|![](images/connectornav/sending-reminder/de/reminders-sending-button.png)|
|-|

Sobald der Versand-Dialog (falls eingeschaltet) bestätigt wurde, werden alle in der Mahnung genannten Rechnungen als PDF-Datei erzeugt und an dem Vorgang angehängt. 

<br>

{{< notice info Hinweis >}}
Der Funktionsumfang kann individuell von dem hier gezeigten abweichen. Beispielsweise sind die **Connector NAV Templates** nur nach entsprechenden
Erwerb vorhanden. Wenn keine **Connector NAV Templates** erworben wurden, sind die Versand-Aktionen häufig je nach gewünschter Konfiguration in den Standard-Seiten eingefügt. Der Umfang an Aktionsknöpfen richtet sich nach den erworbenen Modulen.
{{< /notice >}}


## Protokollierung

Jegliche (Versand-)Vorgänge des **Connector NAV** werden in der [**Jobliste**](/de-de/connectornav/base/base_overview/) protokolliert.
Rechnungen, die automatisch an eine Mahnung angehängt worden sind, werden ebenfalls protokolliert.
Über die Aktion **Dateien anzeigen** der Seite **Jobliste** ...

|![](images/connectornav/sending-reminder/de/joblist-show-pdf.png)|
|-|

... können Sie die alle zum Vorgang zugeordneten Anhänge einsehen:

|![](images/connectornav/sending-reminder/de/com-temp-attachments.png)|
|-|

## Hinweise zu den Rechnungsanhängen

Zum aktuellen Zeitpunkt werden für Anhänge, die automatisch an Mahnungen angehängt werden, keine Einstellungen aus den **Connector NAV Benutzerberichtseinstellungen** berücksichtigt. Das heißt es ist aktuell nicht möglich für diese Anhänge bestimmte Einstellungen, wie beispielsweise den Dateinamen, einzurichten.