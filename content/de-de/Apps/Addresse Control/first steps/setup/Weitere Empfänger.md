---
title: "Weitere E-Mail Empfänger (CC/BCC)"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: true
weight: 5
---
### Weitere E-Mail-Empfänger einrichten

Neben der Funktionalität, Zieladressen pro Jobmodus und Verwendung einzurichten,
bietet **Connector 365 Addressee Control** eine weitere Funktion an, die es erlaubt,
pro Debitor und Verwendung noch weitere E-Mail-Empfänger festzulegen.
Wie Sie dies einrichten können, erfahren Sie im Folgenden.


### Einrichtung
Weitere Debitor-Zieladressen können Sie in den Dokumentlayouts des gewünschten Debitors hinterlegen.

Die **Connector 365 Addressee Control** App erweitert die **Dokumentlayouts** um ein weiteres Feld: **Weitere Ziele**.
|![](/images/apps/Addresse_Control/Dokumentenlayouts_Weitere_Zieladressen.png)|
|-|

Der Inhalt des Felds gibt an, ob weitere Zieladressen zum aktuellen Zeitpunkt eingerichtet sind. In diesem Fall
lautet der Inhalt des Feldes ***Weitere Ziele***: **Nein**, da noch keine Zieladressen eingerichtet sind.

Klicken Sie nun auf den Inhalt des Feldes. Es öffnet sich eine weitere Seite:
|![](images/apps/Addresse_Control/Weitere_Zieladressen_Page.png)|
|-|

Es sind nun drei Felder zur Verfügung:

| Feld | Funktion|
|-|-|
| Ziel | Die E-Mail Adresse, welche als weiterer Empfänger-Adresse hinterlegt wird.  |
| CC   | Die eingerichtete E-Mail-Adresse (*Ziel*) wird als CC-Empfänger angenommen |
| BCC  | Die eingerichtete E-Mali-Adresse (*Ziel*) wird als BCC-Empfänger angenommen |

{{< notice info Hinweis >}}
Wenn eine E-Mail Adresse eingerichtet ist, jedoch weder **CC** oder **BCC** ausgewählt sind, so wird die eingerichtete E-Mail Adresse als direkter Empfänger hinterlegt.
{{< /notice >}}

<br></br>
Sie können beliebig viele Zeilen anlegen und je Zeile unterschiedlich konfigurieren.
***Beispieleinrichtung***:
|![](images/apps/Addresse_Control/Weitere_Zieladressen_Beispiel_Einrichtung.png)|
|-|

Sobald Sie Ihre gewünschten weiteren Empfänger eingerichtet haben, können Sie die Seite schließen.
Wenn Sie nun wieder in die **Dokumentlayouts** des soeben eingerichteten Debitors/Kreditors gehen,
so sollte sich der Wert des Feldes **Weitere Ziele** von *Nein* auf *Ja* geändert haben: 
|![](images/apps/Addresse_Control/Dokumentenlayouts_Weitere_Zieladressen_Targets.png)|
|-|

Nun können Sie bei Bedarf gleiche Schritte für weitere Verwendungen (z.B. Verkaufsgutschrift) wiederholen.

{{< notice info Hinweis>}}
Die Zieladressen werden pro Debitor **und** pro Berichtsverwendung gespeichert. Ein Debitor kann also für jede Berichtsverwendung verschiedene Zieladressen hinterlegen.
{{< /notice >}}

<br></br>
Erfahren Sie [hier](/de-de/apps/addresse-control/working-with-addresse-control/weitere_zieladressen), wie Sie mit den weiteren eingerichteten Zieladressen arbeiten können.