---
title: "Versand über gebuchte Belege"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---

#### Versand über gebuchte Belege:

Zunächst rufen Sie wie gewohnt Ihre gebuchten Belege auf. Anschließend wählen Sie z.B. gebuchte Verkaufsrechnungen auf. Dort angekommen, wählen Sie die Rechnung aus von der aus Sie eine SMS an den verknüpften Kontakt senden wollen. Anschließend klicken Sie in der Menüleiste unter „Vorgang“ auf den SMS-Knopf

![](/images/connectornav/sms/sms_belege.png)

Es öffnet sich wieder der SMS-Dialog wie auch schon bei dem Versand über Kontakten. Von dort aus können Sie wieder einen 160 Zeichen Text versenden bzw. einen Bodytext verwenden. Mit einem Klick auf „OK“ wird die SMS versendet.
{{<notice info>}}Beim Versand über z.B. geb. Rechnungen wird die dazugehörige Datei nicht versendet, da dies per SMS nicht möglich ist.{{</notice>}}

##### Bodytexte:

Bodytexte für SMS sind einfache .txt Dateien, die Sie ganz einfach mit dem Microsoft Editor bearbeiten können.

![](/images/connectornav/sms/sms_belege2.png)

Schreiben Sie Ihren Text in die .txt-Datei und achten Sie dabei darauf nicht das Limit von 160 Zeichen zu überschreiten. In dieser Datei können Sie auch die schon zuvor erwähnten Platzhalter benutzen. Anschließend speichern Sie den Bodytext, am besten in einem zentralen Ordner in dem sich alle Bodytexte befinden.

Um den Bodytext zu verwenden müssen Sie diesen entweder in einem Bericht fest hinterlegen, anschließend wird der Bodytext automatisch geladen sobald man über den Bericht eine SMS versendet oder beim Versand einer SMS manuell den Bodytext auf den neuen abändern, dies müssten Sie dann aber bei jedem Versand machen.

##### Platzhalter:

Sie können Platzhalter verwenden um häufig verwendete Phrasen wie z.B. eine Grußformel oder variablen wie z.B. Namen automatisch in einen Text hinzuzufügen. Nur Bodytexte unterstützen diese Platzhalter, im Textfeld werden sie nicht unterstützt. Hier finden Sie eine Übersicht über alle verfügbaren Platzhalter.
|Verfügbare Platzhalter | | |
|---|---|---|---|
| Anrede   | %1 | Belegnummer      | %8  |
| Vorname  | %2 | Firmen Name      | %9  |
| Name     | %3 | Firmen Name 2    | %10 |
| Funktion | %4 | Firmen Adresse   | %11 |
| Telefon  | %5 | Firmen Adresse 2 | %12 |
| Fax      | %6 | Firmen PLZ       | %13 |
| E-Mail   | %7 | Firmen Ort       | %14 |
|          |    | Datum            | %15 |
|          |    | Uhrzeit          | %16 |

*Hinweis: Zwar werden sämtliche Platzhalter in SMS unterstützt, jedoch sollten Sie auf einige, wegen der eingeschränkten Zeichenanzahl, verzichten. Da sie ansonsten unnötig Platz einnehmen.*

**Ein Beispiel für die Anwendung von Platzhaltern:**

Dies ist der Text den wir in unserem Bodytext eingeben:

**%1** wir möchten Sie darüber informieren, dass wir soeben unsere Rechnung
**%8** an Sie versendet haben.

Dies würde in der SMS dann wie folgt „übersetzt“ werden:

**Sehr geehrter Herr Müller,** wir möchten Sie darüber informieren, dass wir soeben unsere Rechnung **GAR18-1871** an Sie versendet haben.