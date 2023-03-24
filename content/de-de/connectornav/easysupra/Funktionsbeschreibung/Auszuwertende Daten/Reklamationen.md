---
title: "Reklamationen"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Reklamationen

Mit dem Modul easySUPRA wird die Anbindung der Business Central-Standard Einkaufsreklamationen ermöglicht und damit einhergehend die Auswertung einer mengenmäßigen Reklamationsrate. Dazu erfassen Sie eine Standard-Einkaufsreklamationen in Business Central. In der Einkaufsreklamation muss der Bezug zu einem bestimmten Wareneingang über 
das Feld „Ausgleich mit Artikelposten“ hergestellt werden. Wird dieser manuelle Ausgleich 
nicht gesetzt, nimmt Business Central automatisch den Standardausgleich vor. Dabei wird 
für den Artikel je nach Lagerabgangsmethode die Ware zum Beispiel nach „FIFO“ (First-InFirst-Out) ausgeglichen.

![](images/connectornav/easysupra/Abb35.png)

**Abbildung 35: Einkaufsreklamation mit manuellem Ausgleich**

Nachdem die Einkaufsreklamation gebucht wurde, wird eine Einkaufsrücklieferung, in diesem Beispiel die Äpfel als Warenausgang verzeichnet. Im Hintergrund wird ein Artikelausgleichsposten gebildet und damit die Verknüpfung zum Wareneingang hergestellt. In Abbildung 36 ist der gebuchte Wareneingang mit der reklamierten Menge aus der gebuchten 
Einkaufsrücklieferung abgebildet.

![](images/connectornav/easysupra/Abb36.png)

**Abbildung 36: Gebuchte Einkaufslieferung mit reklamierter Menge**

Wie sich die Zahl unter dem Feld „reklamierte Menge“ zusammensetzt, kann über die Schaltfläche „Reklamationen anzeigen“ eingesehen werden. Es öffnet sich eine Übersicht aller Einkaufsrücklieferungen die einen Bezug zu dem ausgewählten Wareneingang der geb. Einkaufslieferzeile aufweisen (vgl. Abbildung 36 und Abbildung 37).

![](images/connectornav/easysupra/Abb37.png)

**Abbildung 37 : Ausgeglichene Artikelposten**

Über die ausgeglichenen Artikelposten kommen Sie wieder zum Einkaufsrücklieferungsbeleg
zurück. Die Reklamationsrate wird durch das Verhältnis zwischen die Felder „Menge“ und 
„Ausgeglichene Menge“ gefüllt. Dazu können Sie unter den harten Kriterien die Einrichtung 
vornehmen. Ein Beispiel für die Einrichtung der Reklamationsrate zeigt . Hier wird die Reklamationsrate in vier Stufen aufgeteilt. Den Detaillierungsgrad kann jedes Unternehmen für sich 
einrichten. 

![](images/connectornav/easysupra/Abb38.png)

**Abbildung 38: Einrichtungsbeispiel Reklamationsrate**

