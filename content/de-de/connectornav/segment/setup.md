---
title: "Segmenten-Versand einrichten"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---

#### Connector NAV für den Segmenten-Versand einrichten

Nachdem die Liste mit den Kontakten, die das Segment empfangen sollen vorbereitet wurde, geht es nun an die Einrichtung der Mail mit dem Connector NAV. Über „Benutzerbericht“ richten Sie nun folgende Parameter ein:

![](/images/connectornav/segment/setup1.png)

**Berichts-ID:** Ist fix – diese ist nicht zu ändern

**Sprache:** Sollten Sie mehrsprachige Kunden haben und Ihre Mails dementsprechend in verschiedenen Sprachen versenden wollen. Ist die Benutzerberichts-Einrichtung pro Sprachcode zu definieren.

**Betreff:** Hier ist die Betreffzeile der Mail zu setzen

**E-Mail Absender:** Hier kann über SMTP die eigene Absenderkennung überschrieben werden.

**Bodytextdatei:** Hier ist der Mail / Body Text oder auch Disclaimer genannt zu definieren

(Für die Erstellung in Word siehe separate Doku)

![](/images/connectornav/segment/setup2.png)

Zusätzliche Einstellungen im Register „Steuerung“ sind je nach Vorgang vorzunehmen:

![](/images/connectornav/segment/setup3.png)

**E-Mail Schnittstelle:** Hier sollte die korrekte Schnittstelle gesetzt sein.

**„HTML Bodytext“:** Hier ist es wichtig, dass der Haken gesetzt ist, damit die Mail in der richtigen Formatierung versendet wird.

<table>
<tr>
<td><strong>Dialog an/aus:</strong></td>
<td>Dialog aus – Dann wird der Mailversand Silent ausgeführt.<br />Dialog an – Hier öffnet sich vor dem Versand noch mal ein Dialog, bei dem für alle Einstellungen und Vorbelegungen noch mal eingegriffen und geändert werden können.</td>
</tr>
</table>

Sie können Ihrem Segment auch Anhänge hinzufügen. Hierzu klicken Sie im Menüband unter hinzufügen auf „E-Mail Anhang“

![](/images/connectornav/segment/setup4.png)

Wählen Sie die gewünschte Datei aus und bestätigen Sie Ihre Auswahl. Die soeben hinzugefügte Datei ist nun im Register „Anhänge Zeilen“ einsehbar.

{{<notice info>}}Ausführliche Informationen zu den einzelnen Funktionen finden Sie in der Hauptdokumentation.{{</notice>}}

## Prüfen der Einstellungen und Segment versenden

Um zu sehen, ob Sie wirklich alles richtig eingestellt haben, können Sie sich das Segment einmal selbst zuschicken. Die Funktion „Mail Test“ generiert nur eine einzelne Mail, mit dem entsprechenden Default Einstellungen und Inhalten des Segments, an den zugeordneten Verkäufer der im VK-Code im Segment hinterlegt ist. Die Mailadresse wird aus der hinterlegten Mailadresse im Verkäufercode genommen.

![](/images/connectornav/segment/setup5.png)

Sobald Sie die Mail geprüft und für korrekt befunden haben, können Sie den kompletten Segmenten-Versand über die Funktion „Mailing…“ starten. Achten Sie darauf, dass Sie das Mailing mit Dialog aus starten, da Sie sonst eine Abfrage bekommen, die jedes Mal bestätigt werden muss.

Die E-Mails werden nun an alle Kontakte in Ihrem Segment geschickt, dies kann je nach Anzahl der Kontakte etwas dauern, haben Sie also bitte etwas Geduld.

Nach dem der Versand abgeschlossen ist, können Sie den Status der Mails überprüfen indem Sie auf Status im Menüband klicken. Dort wird Ihnen dann jede Mail des Segments angezeigt und ob diese erfolgreich versendet wurde.

Wenn Ihre Aktivitätenprotokollposten eingerichtet sind, können dort auch andere Mitarbeiter dann pro Kunde überprüfen wer eine E-Mail erhalten hat.