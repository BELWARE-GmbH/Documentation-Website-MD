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
|![](/images/apps/Addresse_Control/Dokumentenlayouts_Weitere_Zieladressen_0_DEU.png)|
|-|

Der Inhalt des Feldes gibt an, ob und wie viele weitere Zieladressen zum aktuellen Zeitpunkt eingerichtet sind. In diesem Fall lautet der Inhalt des Feldes ***Weitere Ziele***: **0**, da noch keine weiteren Zieladressen eingerichtet sind.

Klicken Sie nun auf den Inhalt des Feldes. Es öffnet sich eine weitere Seite:
|![](images/apps/Addresse_Control/Weitere_Zieladressen_Einrichtung_DEU.png)|
|-|

Hier können Sie nun weitere Zieladressen pro Berichts-ID hinterlegen. Dabei können Sie die Empfängerart per Empfänger-Adresse definieren, die folgenden Optionen stehen Ihnen zur Verfügung:

| Feld | Funktion|
|-|-|
| To | Die E-Mail-Adresse, welche als weitere Empfängeradresse hinterlegt wird.  |
| CC   | Die eingerichtete E-Mail-Adresse (*Ziel*) wird als CC-Empfänger hinterlegt. |
| BCC  | Die eingerichtete E-Mail-Adresse (*Ziel*) wird als BCC-Empfänger hinterlegt. |


Sie können beliebig viele Zeilen anlegen und je Zeile unterschiedlich konfigurieren.

***Beispieleinrichtung***:
|![](images/apps/Addresse_Control/Weitere_Zieladressen_Beispiel_Einrichtung2.png)|
|-|

Sobald Sie Ihre gewünschten weiteren Empfänger eingerichtet haben, können Sie die Seite schließen.
In den **Dokumentlayouts** des soeben eingerichteten Debitors/Kreditors, sollte sich der Wert des Feldes **Weitere Ziele** von *0* auf die *Anzahl der weiteren eingerichteten Zieladressen*, in dieser Beispieleinrichtung auf *3* geändert haben: 
|![](images/apps/Addresse_Control/Dokumentenlayouts_Weitere_Zieladressen_3_DEU.png)|
|-|

Wiederholen Sie die Schritte für weitere Verwendungen (z.B. Verkaufsgutschrift), wenn gewünscht.

{{< notice info Hinweis>}}
Die Zieladressen werden pro Debitor **und** pro Berichtsverwendung gespeichert. Ein Debitor kann also für jede Berichtsverwendung verschiedene Zieladressen hinterlegt haben.
{{< /notice >}}

<br></br>
Erfahren Sie [hier](/de-de/apps/addressee-control/working-with-addresse-control/further_targets), wie Sie mit den eingerichteten weiteren Zieladressen arbeiten können.