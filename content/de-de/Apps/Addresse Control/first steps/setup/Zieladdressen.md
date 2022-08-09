---
title: "Zieladressen Test"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: true
weight: 5
---
### Einrichtung

Um die Zieladressen-Logik über die **Connector 365 Addresse Control** App nach Belieben einzustellen, öffnen Sie 
eine der Seiten *Berichtsauswahlen*.

Beispiel der Bereich Verkauf:
**Berichtsauswahl Verkauf**:

|<img src="/images/apps/Addresse_Control/Berichtsauswahl_Verkauf.png" />|
|-|

{{< notice info Hinweis>}}
Bitte beachten Sie die folgende Tabelle der aktuell nutzbaren Berichtsauswahlen für die Nutzung mit **Connector 365 Addressee Control**.
{{< /notice >}}

| Verwendung | Unterstützt|
-------------|-------------
| Verkauf    | Ja         |
| Einkauf    | Ja         |
| Lager      | Nein       |
| Cashflow   | Nein       |
| Lager      | Nein       |
| Mahnung/Zinsrechnung  | Nein       |
| Bankkonto | Nein |
| Projekt | Nein |

Nun haben Sie die Möglichkeit, für verschiedene Jobmodis die Zieladressen-Logik einzustellen.
Wählen Sie also unter **Jobmodus** zuerst den Gewünschten Modus ein (*z.B: E-Mail*).
Anschließend klicken Sie auf den **Assist button** (***Drei Pünktchen***) des Feldes **Ziel aus Feldnummer**.

|![](/images/apps/Addresse_Control/Berichtsauswahl_Verkauf_AssistButton.png)|
|-|

Damit öffnet sich eine neue Seite: **Mögliche Zieladressen**.

|![](/images/apps/Addresse_Control/Zieladdressen_Lookup_Page.png)|
|-|

Nun haben Sie die Möglichkeit, eines der aufgezeigten Felder als Standard-Zieladresse zu definieren.
Die angezeigten Felder auf dieser Seite sind Felder, welche einen direkten Bezug zu einem Debitor/Kreditor oder zu einem Kontakt haben.
Legt man also beispielsweise für die Verwendung (Verkaufs-)**Rechnung**, Jobmodus **E-Mail** eine Verknüpfung zu Feld Nr. **2** - **Verk. an Deb.-Nr.** an, so wird der Empfänger einer Verkaufsrechnung künftig immer aus dem Debitor gesucht, welcher mit **Verk. an Deb.-Nr** verknüpft ist.

### Kompatibilität zu anderen **Connector 365 Apps**

Mit **Connector 365 Addressee Control** lassen sich auch die Zieladressen-Logik weiterer **Connector 365 Apps** anpassen.
Folgende **Connector 365 Apps** sind kompatibel zu **Connector 365 Addressee Control**:
- **Connector 365 XRechnung**
- **Connector 365 E-Post**

Um weitere Jobmodis (bzw. Apps) per **Addresse Control** einzurichten, können Sie einfach weitere Zeilen in der **Connector 365 Addresse Control** Seite hinzufügen.
{{< notice info Beispiel >}}
{{< /notice >}}

|![](/images/apps/Addresse_Control/Berichtsauswahl_Verkauf_Mehrere_Zeilen.png)|
|-|