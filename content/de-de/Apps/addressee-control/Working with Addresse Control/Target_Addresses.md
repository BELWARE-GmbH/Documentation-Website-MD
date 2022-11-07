---
title: "Zieladressen"
date: 2022-10-20T00:00:00.000-05:00
description: 
draft: false
collapsible: false
weight: 4
---
# Arbeiten mit festgelegten Zieladressen

Zur Darstellung der Funktionsweise wird im Folgenden beispielhaft der Umgang mit gebuchten Verkaufsrechnungen dargestellt. Es wird hierbei vorausgesetzt, dass der Verkauf-An-Debitor für die Verkaufsrechnungen mithilfe der 
**Connector 365 Addressee Control** als Zieladresse eingerichtet wurde:

|![](/images/apps/Addresse_Control/Berichtsauswahl_Verkauf_Example_WorkWith.png)|
|-|

Angenommen es soll eine Rechnung verschickt werden, bei welchem der Rechnungsempfänger und der Käufer verschieden sind:
|![](/images/apps/Addresse_Control/GebVerkRechnungen_SellToBillToCust.png)|
|-|

{{< notice info Hinweis >}}
Zur Vereinfachung wurden im Folgenden für den Rechnungsempfänger **Bill-To-Customer@mail.de** eingerichtet, für den Käufer **Sell-To-Customer@mail.de**.
{{< /notice >}}

</br>

Bei Ausführen der Aktion: **Per E-Mail senden**, wird im Standard normalerweise die E-Mail-Adresse des Rechnungsempfängers im E-Mail-Dialog eingetragen:

|![](/images/apps/Addresse_Control/MailDialog_SellToCust.png)|
|-|

Mit der Einstellung jedoch, dass der Verkauf-an-Debitor für das Setzen der Zieladressen herangezogen werden soll, sieht der Dialog wie folgt aus:

|![](/images/apps/Addresse_Control/MailDialog_BillToCust.png)|
|-|



Hier wurde nun die E-Mail Adresse des Verkauf-an-Debitors als Zieladresse festgelegt. 
In diesem Beispiel waren weder für den Rechnungsempfänger noch für den Käufer ein Dokumentlayout eingerichtet worden.
Sofern eingerichtet, werden jedoch noch weitere Empfänger (CC und BCC) entsprechend der eingerichteten Zieladressen-Logik übernommen.