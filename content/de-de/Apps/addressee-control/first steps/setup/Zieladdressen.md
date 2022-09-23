---
title: "Zieladressen"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: true
weight: 5
---
### Einrichtung

Um die Zieladressen-Logik über die **Connector 365 Addresse Control** App nach Belieben einzustellen, öffnen Sie 
eine der Seiten *Berichtsauswahlen*.

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


*Beispiel aus dem Bereich Verkauf -> **Berichtsauswahl - Verkauf**:*

|<img src="/images/apps/Addresse_Control/Berichtsauswahl_Verkauf.png" />|
|-|


Nun haben Sie die Möglichkeit, für verschiedene Berichtsverwendungen und Jobmodis die Zieladressen-Logik einzustellen.
Wählen Sie also unter **Jobmodus** zuerst den Gewünschten Modus ein (*z.B: E-Mail*).
Anschließend klicken Sie auf den **Assist Button** (***Drei Pünktchen***) des Feldes **Ziel aus Feldnummer**.

|![](/images/apps/Addresse_Control/Berichtsauswahl_Verkauf_AssistButton.png)|
|-|

{{< notice info Hinweis >}}
Mit Jobmodus ist hier gemeint, für welche Art von Verarbeitung die eingestellte Zieladressen-Logik greift. Immer vorhanden
ist der Jobmodus E-Mail, also der standartisierte Mail-Versand von Business Central.
Es lassen sich zudem allerdings auch weitere **Connector 365 Apps** über **Connector 365 Addresse Control** steuern.
Welche Apps hierfür kompatibel sind, erfahren Sie [hier](de-de/apps/addresse-control/first-steps/setup/zieladdressen/#ACCon365).
{{< /notice >}}
Damit öffnet sich eine neue Seite: **Mögliche Zieladressen**.

|![](/images/apps/Addresse_Control/Zieladdressen_Lookup_Page.png)|
|-|

Nun haben Sie die Möglichkeit, eines der aufgezeigten Felder als Standard-Zieladresse zu definieren.
Die angezeigten Felder auf dieser Seite sind Felder, welche einen direkten Bezug zu einem Debitor/Kreditor oder zu einem Kontakt haben.
Legt man also beispielsweise für die Verwendung (Verkaufs-)**Rechnung**, Jobmodus **E-Mail** eine Verknüpfung zu Feld Nr. **2** - **Verk. an Deb.-Nr.** an, so wird der Empfänger einer Verkaufsrechnung künftig immer aus dem Debitor gesucht, welcher mit **Verk. an Deb.-Nr** verknüpft ist.

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

Um weitere Jobmodis (bzw. Apps) per **Addresse Control** einzurichten, können Sie einfach weitere Zeilen in der **Connector 365 Addresse Control** Seite hinzufügen.
{{< notice info Beispiel >}}
{{< /notice >}}

|![](/images/apps/Addresse_Control/Berichtsauswahl_Verkauf_Mehrere_Zeilen.png)|
|-|
