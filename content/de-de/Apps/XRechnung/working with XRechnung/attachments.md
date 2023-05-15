---
title: "Anhänge"
date: 2020-02-28T10:08:56+09:00
description: 
draft: true
collapsible: false
weight: 2
---
# Anhänge

Wie bereits in der Einrichtung zum Thema [**Debitor**](de-de/apps/xrechnung/first-steps/setup/setup-customer) erwähnt, 
erlaubt die **Connector 365 XRechnung** App bei Erzeugung einer XRechnung den Originalbeleg in die resultierende XML-Datei einzubinden, 
oder aber in Form einer PDF-Datei an eine E-Mail anzuhängen.
Neben den Originalbeleg können jedoch auch weitere Anhänge beliebig hinzugefügt oder in die XML-Datei eingebettet werden.
Im folgenden wird näher erläutert, wie Sie Anhänge ganz einfach per Dialog, oder auch durch Vorab-Konfiguration festlegen können.

## Anhänge per Dialog hinzufügen

Führen Sie die Aktion **Als XRechnung Senden** auf einer unterstützten Seite, z.B: **Gebuchte Verkaufsrechnungen** aus.
Es öffnet sich das Dialog-Fenster: 
|![](images/apps/XRechnung/de/xr_dialog_source_doc_embedded.png)|
|-|

Am unterem Ende befindet sich die Ansicht für Anhänge.
Falls Sie in den Dokumentlayouts eingestellt haben, dass dass der Beleg entweder als XML eingebettet, oder als zusätzlicher Anhang betrachtet wird,
so erscheint dieser in dieser Ansicht, wie im Bild oben beispielhaft dargestellt.
Folgende Felder werden pro Zeile dargestellt:

| Feld | Beschreibung |
|-|-|
| In XML einbetten | Gibt an, ob der zugehörige Anhang in die XML-Datei eingebettet werden soll |
| Dateiname | Gibt den Dateinamen des Anhangs an |

Durch Klicken auf die Aktion **Anhang hinzufügen** können Sie nun weitere Anhänge hinzufügen:
|![](images/apps/XRechnung/de/xr_dialog_anhaenge_hinzufuegen.png)|
|-|

Anschließend erhalten Sie die Möglichkeit eine Datei auszuwählen, die Sie hochladen möchten.
Wenn Sie dies getan und den Dialog bestätigt haben, wird die ausgewählte Datei in Business Central hochgeladen und 
der Anhangsliste hinzugefügt:

|![](images/apps/XRechnung/de/xr_dialog_add_attachment.png)|
|-|

Standardmäßig werden neue Anhänge in die XML-Datei eingebettet.
Wenn Sie jedoch möchten, dass bestimmte Anhänge nicht eingebettet werden sollen, sondern beim Mail-Versand als zusätzlicher Anhang behandelt werden soll,
nehmen Sie das Häkchen für **In XML einbetten** raus.

|![](images/apps/XRechnung/de/xr_dialog_do_not_embedd_attachment.png)|
|-|

{{< notice info Hinweis >}}
Bitte beachten Sie, dass nicht jeder beliebige Datei-Typ für den Standard **XRechnung** erlaubt sind.
Im folgenden eine aktuelle Auflistung der Datei-Typen, welche ein XRechnungs-Empfänger empfangen und verarbeiten können muss:

* application/pdf (.pdf)
* image/png (.png)
* image/jpeg (.jpg)
* text/csv (.csv)
* application/vnd.openxmlformats-officedocument.spreadsheetml.sheet (.xslx)
* application/vnd.oasis.opendocument.spreadsheet (.ods)
{{< /notice >}}

## Anhänge vorab konfigurieren

Die **Connector 365 XRechnung** App alleine bietet keine Möglichkeit, Anhänge vorab festzulegen, die entweder für einzelne Debitoren, oder grundsätzlich 
für verschiedene Belegarten beim XRechnung-Versand automatisch hinzugefügt werden. 
Allerdings besteht die Möglichkeit zur Nutzung der **Connector 365 Mail Attachments** App. Diese erlaubt Anhänge 
für verschiedene Szenarien vorzubelegen und beim E-Mail-Versand automatisch als Anhang hinzuzufügen. 
Diese Funktionalität arbeitet auch mit der **Connector 365 XRechnung** App zusammen. 
Mehr über **Connector 365 Mail Attachments** erfahren Sie [hier](de-de/apps/mail-attachments-plus).