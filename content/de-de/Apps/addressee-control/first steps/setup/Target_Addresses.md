---
title: "Zieladressen"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 5
---
### Einrichtung Zieladressen pro Bericht

Um die Zieladressen-Logik über die **Connector 365 Addressee Control** App nach Belieben einzustellen, öffnen Sie eine der Seiten *Berichtsauswahlen*.

{{< notice info Hinweis>}}
Bitte beachten Sie die folgende Tabelle der aktuell nutzbaren Berichtsauswahlen für die Nutzung mit **Connector 365 Addressee Control**.
{{< /notice >}}

| Verwendung | Unterstützt|
-------------|-------------
| Verkauf    | <img src="/images/apps/Addresse_Control/tick.png" width=30 >       |
| Einkauf    | <img src="/images/apps/Addresse_Control/tick.png" width=30 >       |
| Lager      | <img src="/images/apps/Addresse_Control/cross.png" width=30 >       |
| Cashflow   | <img src="/images/apps/Addresse_Control/cross.png" width=30 >       |
| Lager      | <img src="/images/apps/Addresse_Control/cross.png" width=30 >       |
| Mahnung/Zinsrechnung  | <img src="/images/apps/Addresse_Control/cross.png" width=30 >  |
| Bankkonto | <img src="/images/apps/Addresse_Control/cross.png" width=30 >  |
| Projekt | <img src="/images/apps/Addresse_Control/cross.png" width=30 >  |

Die **Connector 365 Addressee Control** App erweitert unterstützte Berichtsauswahlseiten um eine Auswahlliste.

*Beispiel aus dem Bereich Verkauf -> **Berichtsauswahl - Verkauf**:*

|<img src="/images/apps/Addresse_Control/Berichtsauswahl_Verkauf.png" />|
|-|

Nun haben Sie die Möglichkeit, für verschiedene Berichtsverwendungen die Zieladressen-Logik einzustellen.
Klicken Sie hierzu auf den **Assist Button** (***Drei Pünktchen***) des Feldes **Ziel aus Feldnummer**.

|![](/images/apps/Addresse_Control/Berichtsauswahl_Verkauf_AssistButton.png)|
|-|

Damit öffnet sich eine neue Seite: **Mögliche Zieladressen**.

|![](/images/apps/Addresse_Control/Zieladdressen_Lookup_Page.png)|
|-|

Nun haben Sie die Möglichkeit, eines der aufgezeigten Felder als Standard-Zieladresse zu definieren.
Die angezeigten Felder auf dieser Seite sind Felder, welche einen direkten Bezug zu einem Debitor/Kreditor oder zu einem Kontakt haben.
Legt man also beispielsweise für die Verwendung (Verkaufs-)**Rechnung** eine Verknüpfung zu Feld Nr. **2** - **Verk. an Deb.-Nr.** an, so wird der Empfänger einer Verkaufsrechnung künftig immer aus dem Debitor gesucht, welcher mit **Verk. an Deb.-Nr** verknüpft ist.

{{< notice info>}}
Wählt man als Zieladresse eine Feldzuordnung zu einem Debitor/Kreditor, so hat dies auch Einfluss auf die Wahl
der Dokumentlayouts. Wenn Sie beispielsweise für Verkaufsrechnungen festlegen, dass der Verkauf-an-Debitor für 
die Suche nach Zieladressen herangezogen werden soll, so werden auch die Einstellungen der Dokumentlayouts des
entsprechenden Debitors entnommen. Standardmäßig ist in Business Central hierfür der Rechnungsempfänger vorgesehen. 
Mit **Connector 365 Addressee Control** können Sie also dieses Verhalten übersteuern.
{{< /notice >}}

<a name="ACCon365" class="anchor"></a>
### Kompatibilität zu anderen **Connector 365 Apps**

Mit **Connector 365 Addressee Control** lassen sich auch die Zieladressen-Logik weiterer **Connector 365 Apps** anpassen.
Folgende **Connector 365 Apps** sind kompatibel zu **Connector 365 Addressee Control**:

-  **Connector 365 XRechnung**
-  **Connector 365 E-Post**
-  **Connector 365 Easy Document Pin**
-  **Connector 365 Mail Experience Plus**
   >  **Connector 365 Mail Attachments Plus**
   >  **Connector 365 Mail Subject Plus**
