---
title: "Zieladressen"
date: 2022-10-20T00:00:00.000-05:00
description: 
draft: false
collapsible: false
weight: 4
---
### Arbeiten mit festgelegten Zieladressen

Zur Darstellung der Funktionsweise wird im Folgenden beispielhaft der Umgang mit gebuchten Verkaufsrechnungen dargestellt. 
Es wird hierbei vorausgesetzt, dass der <i> Verkauf-An-Debitor</i> für die Verkaufsrechnungen mithilfe der **Connector 365 Addressee Control** als Zieladresse eingerichtet wurde:

|![](/images/apps/Addresse_Control/Berichtsauswahl_Verkauf_Example_WorkWith_DEU.png)|
|-|

Angenommen es soll eine Rechnung verschickt werden, bei welchem der Rechnungsempfänger und der Käufer verschieden sind:
|![](/images/apps/Addresse_Control/Rechnung_SellToBillToCust_DEU.png)|
|-|

{{< notice info Hinweis >}}
Zur Vereinfachung wurden im Folgenden die Dokumentlayouts für den Rechnungsempfänger mit **documentlayout@bill-to-customer.de** eingerichtet und für den Käufer mit **documentlayout@sell-to-customer.de**.
{{< /notice >}}

</br>

Bei Ausführen der Aktion: **Per E-Mail senden**, wird im Standard normalerweise die E-Mail-Adresse aus den Dokumentlayouts des Rechnungsempfängers im E-Mail-Dialog eingetragen. Dies sieht, wie folgt aus:

|![](/images/apps/Addresse_Control/MailDialog_BillTo_DEU.png)|
|-|

Mit der Einstellung jedoch, dass der Verkauf-an-Debitor für das Setzen der Zieladressen herangezogen werden soll, sieht der Dialog so aus:

|![](/images/apps/Addresse_Control/MailDialog_SellTo_DEU.png)|
|-|



Hier wurde nun die E-Mail-Adresse des Verkauf-an-Debitors als Zieladresse aus den Dokumentlayouts herangezogen. 
Sofern eingerichtet, werden die weiteren Empfänger (CC und BCC) jedoch entsprechend der eingerichteten Zieladressen-Logik übernommen.

Wenn in den Dokumentlayouts keine **E-Mail-Adresse** hinterlegt ist, dann greift die Zieladressen-Logik als nächstes auf das E-Mail-Feld im Verkaufsrechnungskopf zurück.

Der E-Maildialog sähe dann, wie folgt aus:

|![](/images/apps/Addresse_Control/MailDialog_Belegkopf.png)|
|-|

Wenn im Belegkopf der Verkaufsrechnung 102232 keine E-Mail-Adresse hinterlegt ist, dann greift die Zieladressen-Logik auf das nächste hinterlegte Feld. Laut der oben abgebildeten Zieladressen-Logik wird dann auf das E-Mail-Feld des Verkauf an Debitors zugegriffen.

Der E-Mail-Dialog würde dann die E-Mailadresse des Debitors **10000 Adatum Corporation** beinhalten.

|![](/images/apps/Addresse_Control/MailDialog_Debitor.png)|
|-|

Wenn auch hier das entsprechende Feld keine E-Mailadresse beinhaltet, kommt es zu einer Fehlermeldung, indem das Feld für die Empfänger-E-Mail leer bleibt.
