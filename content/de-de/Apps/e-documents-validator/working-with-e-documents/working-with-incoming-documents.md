---
title: "Arbeiten mit eingehenden Dokumenten"
date: 2024-10-16
description: 
draft: false
collapsible: true
weight: 1
---

# Arbeiten mit eingehenden Dokumenten 

**Connector 365 E-Documents Validator** bietet Werkzeuge an, um den Import von elektronischen Belegen
zu unterstützen und zu verbessern.
Zum einen wird die **Validierung** von eingehenden Dokumenten ermöglicht, wodurch recht schnell und einfach 
auch nicht auffällige Fehlerquellen gefunden werden können.
Weiterhin wird das **Visualisieren** von XML-Dokumenten unterstützt, indem eine für den Menschen leicht 
lesbare Form von E-Dokumenten erzeugt und angehängt wird.
Falls eingehende Dokumente eingebettete **Anhänge** enthalten, so wird zudem ermöglicht diese zu extrahieren um 
diese direkt in Business Central zu importieren, so dass Sie jederzeit leichten Zugang zu Ihren Anhängen haben.

Im Folgenden erfahren Sie, wie Sie die oben genannten Funktionen in Business Central verwenden können.

## Visualisierung

Navigieren Sie über die Suchleiste zu der Seite **Eingehende Belege**:

![](images/apps/e-documents-validator/de/inc-docs-search-bar.png)
|-|

Falls Sie noch keine eingehenden Belege haben, so können Sie ganz einfach ein elektronisches Dokument importieren.
Klicken Sie dazu auf **Neu** -> **Aus Datei erstellen**:

![](images/apps/e-documents-validator/de/inc-docs-import-new-file.png)
|-|

Nachdem Sie ein Dokument importiert haben, sehen Sie einen neuen Eintrag auf der Seite:

![](images/apps/e-documents-validator/de/inc-docs-list-entries.png)
|-|

Navigieren Sie nun in der Aktionsleiste zu **Aktionen** und klicken Sie auf **Validierungsbericht anhängen**:
![](images/apps/e-documents-validator/de/inc-docs-action-visualize.png)
|-|

Bei Erfolg wird nun eine Visualisierung des Dokumentes erzeugt und an dem Vorgang angehängt. 
Die neu erzeugte Datei kann in der Factbox unter **Eingehende Belegdateien** eingesehen werden:

![](images/apps/e-documents-validator/de/inc-docs-factbox-visualization.png)
|-|

Klicken Sie auf den neu erzeugten Anhang, um den Inhalt einzusehen:

![](images/apps/e-documents-validator/de/visualization-file.png)
|-|

Die Visualisierung ist nach mehreren Reitern strukturiert, wie oben im Bild zu sehen ist.
Unterteilt wird diese Datei in **Übersicht, Details, Zusätze, Anlagen, Laufzettel**.
Klicken Sie auf die verschiedenen Reiter, um den Inhalt jeweils anzeigen zu lassen.

{{< notice info Hinweis >}}
Sie können das Erzeugen von Visualisierungs-Dateien auch automatisch bei Import erfolgen lassen.
Klicken Sie [hier](/de-de/apps/e-documents-validator/first-steps/setup/base-setup) um mehr zu erfahren.
{{< /notice >}}

## Validierungsbericht

Um eingehende Dokumente zu validieren, öffnen Sie zunächst die Seite der eingehenden Belege:

![](images/apps/e-documents-validator/de/inc-docs-list-entries.png)
|-|

Navigieren Sie zu Ihren gewünschten Eintrag bzw. Ihr Ihr gewünschtes Dokument, dass Sie validieren möchten.
Gehen Sie in der Aktionsleiste auf **Aktionen** und klicken Sie auf **Validierungsbericht anhängen**.

![](images/apps/e-documents-validator/de/inc-docs-action-validate.png)
|-|

Bei Erfolg wird nun ein Validierungsbericht des Dokuments erzeugt und an dem Vorgang angehängt.
Die neu erzeugte Datei kann in der Factbox unter **Eingehende Belegdateien** eingesehen werden:
Der Validierungsbericht enthält einen Zeitstempel und das Wort **Validierungsbericht** im Dateinamen, und ist vom Typ **XML**:

![](images/apps/e-documents-validator/de/inc-docs-factbox-validation.png)
|-|

Klicken Sie auf den neu erzeugten Anhang, um den Inhalt einzusehen:

|![](images/apps/e-documents-validator/de/validation-file.png)|
|-|

{{< notice info Hinweis >}}
Sie können das Erzeugen von Validierungsberichten auch automatisch bei Import erfolgen lassen.
Klicken Sie [hier](/de-de/apps/e-documents-validator/first-steps/setup/base-setup) um mehr zu erfahren.
{{< /notice >}}