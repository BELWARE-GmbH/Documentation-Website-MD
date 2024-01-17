---
title: "Weitere E-Mail Empfänger (CC/BCC)"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 5
---
### Weitere E-Mail-Empfänger einrichten

Neben der Funktionalität, Zieladressen pro Jobmodus und Verwendung einzurichten, bietet **Connector 365 Addressee Control** eine weitere Funktion an, die es erlaubt, pro Debitor und Verwendung noch weitere E-Mail-Empfänger festzulegen. Wie Sie dies einrichten können, erfahren Sie im Folgenden.

### Einrichtung
Weitere Debitor-Zieladressen können Sie in den Dokumentlayouts des gewünschten Debitors hinterlegen.

Die **Connector 365 Addressee Control** App erweitert die **Dokumentlayouts** um ein weiteres Feld: **Weitere Ziele**.
|![](/images/apps/Addresse_Control/Dokumentenlayouts_Weitere_Zieladressen.png)|
|-|

Der Inhalt des Feldes gibt an, ob weitere Zieladressen zum aktuellen Zeitpunkt eingerichtet sind. In diesem Fall lautet der Inhalt des Feldes ***Weitere Ziele***: **Nein**, da noch keine weiteren Zieladressen eingerichtet sind.

Klicken Sie nun auf den Inhalt des Feldes. Es öffnet sich eine weitere Seite:
|![](images/apps/Addresse_Control/Weitere_Zieladressen_Page.png)|
|-|

Es stehen Ihnen nun drei Felder zur Verfügung:

| Feld | Funktion|
|-|-|
| Ziel | Die E-Mail-Adresse, welche als weitere Empfängeradresse hinterlegt wird.  |
| CC   | Die eingerichtete E-Mail-Adresse (*Ziel*) wird als CC-Empfänger hinterlegt. |
| BCC  | Die eingerichtete E-Mail-Adresse (*Ziel*) wird als BCC-Empfänger hinterlegt. |

{{< notice info Hinweis >}}
Wenn eine E-Mail-Adresse eingerichtet ist, jedoch weder **CC** oder **BCC** ausgewählt sind, so wird die eingerichtete E-Mail-Adresse als direkter Empfänger hinterlegt.
{{< /notice >}}

<br></br>
Sie können beliebig viele Zeilen anlegen und je Zeile unterschiedlich konfigurieren.
***Beispieleinrichtung***:
|![](images/apps/Addresse_Control/Weitere_Zieladressen_Beispiel_Einrichtung.png)|
|-|

Sobald Sie Ihre gewünschten weiteren Empfänger eingerichtet haben, können Sie die Seite schließen.
In den **Dokumentlayouts** des soeben eingerichteten Debitors/Kreditors, sollte sich der Wert des Feldes **Weitere Ziele** von *Nein* auf *Ja* geändert haben: 
|![](images/apps/Addresse_Control/Dokumentenlayouts_Weitere_Zieladressen_Targets.png)|
|-|

Wiederholen Sie die Schritte für weitere Verwendungen (z.B. Verkaufsgutschrift), wenn gewünscht.

{{< notice info Hinweis>}}
Die Zieladressen werden pro Debitor **und** pro Berichtsverwendung gespeichert. Ein Debitor kann also für jede Berichtsverwendung verschiedene Zieladressen haben.
{{< /notice >}}

<br></br>
Erfahren Sie [hier](/de-de/apps/addressee-control/working-with-addresse-control/further_targets), wie Sie mit den eingerichteten weiteren Zieladressen arbeiten können.