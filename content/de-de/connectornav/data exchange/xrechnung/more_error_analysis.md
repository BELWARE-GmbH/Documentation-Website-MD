---
title: "Informationen zur Fehlersuche"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 9
---

##### Weitere Informationen zur Fehlersuche

In dieser Dokumentation wurde beispielhaft ein möglicher Fall einer fehlerhaften Validierung aufgezeigt. Neben der dort gezeigten Problematik mit der Leitweg-ID, gibt es noch einige andere Fehlerquellen. Daher ist es enorm vorteilhaft, einen Validierungsdienst zu verwenden, da ansonsten Fehler möglicherweise erst in einem der Rechnungsportale oder beim Rechnungsempfänger auffallen. Anhand des Validierungsberichts und mithilfe der [**PEPPOL BIS Billing 3.0 Code Lists**](https://docs.peppol.eu/poacc/billing/3.0/codelist/) lassen sich die meisten Fehler schnell beseitigen.  
Gerne unterstützen wir Sie auch bei dem Prozess, Ihre XRechnungen zu bereinigen.

Im Folgenden führen wir weitere Punkte auf, welche vor der Nutzung des XRechnung-Moduls schon einmal geprüft werden sollten, da es sich bei diesen um häufige Fehlerquellen handelt.

###### MwSt.-Schema überprüfen  

Sie sollten die MwSt.-Schema Codes für die jeweiligen Länder überprüfen.

Diese lassen sich unter “**Länder/Regionen**” in Dynamics NAV anpassen. Am schnellsten finden Sie diese Seite über die Suchfunktion. Vergewissern Sie sich, dass in der Spalte „**MwSt.-Schema**“ die richtigen, numerischen Werte für die jeweiligen Regionen hinterlegt sind. Für **Deutschland** ist der Wert **9930** einzutragen. Alle weiteren **MwSt.-Schema-Codes** finden Sie in der offiziellen **Code List**: [**Electronic Address Scheme (EAS**](https://docs.peppol.eu/poacc/billing/3.0/codelist/eas/)).

![](/images/connectornav/data_exchange/xr_valid7.png)

###### Standardcodes für Einheiten überprüfen

Es lohnt sich einmal zu überprüfen, ob Ihre Einheiten richtig eingepflegt sind.

Die Page mit Ihren Einheiten können Sie am schnellsten erreichen, indem Sie‚ **Einheiten‘** in die Suchleiste eingeben. Um PEPPOL/XRechnung-Konformität zu gewährleisten, sollte jede eingetragene Einheit den zugehörigen **internationalen Standardcode** hinterlegt haben. Die Einheitencodes sind aus folgenden Listen zu entnehmen:

-   [UN/ECE Recommendation 20](https://docs.peppol.eu/poacc/billing/3.0/codelist/UNECERec20/)

-   [UN/ECE Recommendation 21](https://docs.peppol.eu/poacc/billing/3.0/codelist/UNECERec21/)

![](/images/connectornav/data_exchange/xr_valid8.png)<center>Beispiel: Für die Einheit **Liter** *gilt der internationale Standardcode* **LTR**.</center>


###### Überprüfen der Steuerkategorie

Ebenfalls zu empfehlen, ist ein Blick in die **MwSt.-Buchungsmatrix Einrichtung.** Diese finden Sie am schnellsten über die Suchleiste. Jede genutzte Mehrwertsteuer-Angabe benötigt einen gültigen Eintrag in dem Feld **Steuerkategorie**. Die Codeliste [**UNCL5305**](https://docs.peppol.eu/poacc/billing/3.0/codelist/UNCL5305/) bestimmt, welche Einträge erlaubt sind. Die vermutlich relevantesten Steuerkategorie-Codes sind ‚**S**‘ (Standard rate) und ‚**E**‘ (Exempt from tax).

![](/images/connectornav/data_exchange/xr_valid9.png)

###### Negative Rechnungszeilen

Der XRechnung-Standard schreibt vor, dass der Nettobetrag eines Artikels nicht negativ sein darf.  
![](/images/connectornav/data_exchange/xr_valid10.png)

Probleme kann es also geben, wenn Artikel, die beispielsweise für Rückvergütungen berechnet werden sollen, mit einem negativen Preis hinterlegt worden sind. Enthält eine XRechnung eine Rechnungszeile mit einem negativen Artikelbetrag, so wird diese als **nicht** XRechnung-konform geachtet. Um eine negative Rechnungszeile zu übermitteln, sollte man stattdessen die **Menge** auf einen negativen Betrag setzen, da diese negativ sein darf:

![](/images/connectornav/data_exchange/xr_valid11.png)<center>Ausschnitt aus der Internetseite der [Koordinierungsstelle für IT-Standards (KoSIT).](https://www.xoev.de/wir_ueber_uns-8159)</center>

