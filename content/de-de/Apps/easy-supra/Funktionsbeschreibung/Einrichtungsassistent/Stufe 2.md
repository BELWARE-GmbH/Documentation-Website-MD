---
title: "Stufe 2"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Stufe 2

![](images/connectornav/easysupraWeb/Abb7.png)

**Abbildung 7: Einrichtungsassistent – Stufe 2**

Die farblich rot gehaltenen Ziffern entsprechen der gewählten Gewichtung der jeweiligen Kriterienkategorie (vgl. Abbildung 7). Mit einem Klick auf den AssistEdit gelangen Sie zur Einrichtung der gewünschten Kriterien. Die folgende Abbildung 8 zeigt exemplarisch die Einrichtung der „harten“ Faktoren.


![](images/connectornav/easysupraWeb/Abb8.png)

**Abbildung 8: Kriterienauswahl am Beispiel der „harten“ Kriterien**

Definieren Sie in dieser Maske alle relevanten Kriterien. Dazu geben Sie einen Kriteriencode, 
eine Beschreibung und die Referenzfelder als Bewertungsgrundlage an. Optional können Sie 
zusätzliche Filter für die Artikelkategorie, die Produktgruppe, einen Artikel und eine Variante angeben. Dies ermöglicht Ihnen eine differenzierte Bewertung bestimmter Produkte oder Produktgruppen. Dadurch können Sie beispielsweise die Reklamationsrate zweier unterschiedlicher Produktgruppen auch unterschiedlich gewichten und bewerten.
Für die Einrichtung der jeweiligen Kriterien werden Eingaben für die Felder „Referenzfeld 1“, 
„Referenzfeld 2“ und die jeweilige Option auf das Referenzfeld benötigt. Auf der ersten Ebene 
werden die Felder ausgewählt, die miteinander verglichen werden sollen. Hierzu wird nachfolgend anhand des abgebildeten Beispiels exemplarisch dargestellt, welche Möglichkeiten 
auf dieser Ebene gegeben sind. Für das „harte“ Kriterium Liefertreue (vgl. Abbildung 8) werden Felder der Referenztabelle Einkaufslieferzeile (gebuchte Wareneingänge) genutzt.

![](images/connectornav/easysupraWeb/Abb9.png)

**Abbildung 9: Einrichtung der harten Kriterien**

Über die Auswahl des Referenzfeldes werden alle verfügbaren Felder der ausgewählten Referenztabelle angezeigt. Im Sinne der Liefertermintreue des Lieferanten werden das „zugesagte Wareneingangsdatum“ und das „Buchungsdatum“ miteinander verglichen. 
Um weitere Details über die Definition des Kriteriums einsehen zu können, öffnen Sie über 
die Schaltfläche „Kriterium Einrichtung“ die Detailansicht und legen Sie eine Berechnungs-/
Vergleichsgrundlage fest. Hier exemplarisch anhand der Liefertreue:

![](images/connectornav/easysupraWeb/Abb10.png)

**Abbildung 10: Detail-Einrichtung der harten Kriterien**

Die Prozentzeichen in der Spalte „Formel“ werden in der Auswertung durch die ausgewählten 
Referenzfelder (vgl. Abbildung 9) für das Kriterium gesetzt. Das „Referenzfeld 1“ entspricht 
damit %1 und das „Referenzfeld 2“ %2. Im unteren Teil der Karte können Sie diese Zuordnung ebenfalls einsehen. In der Spalte „Typ“ legen Sie fest, welche Einheit für den Bereich 
definiert wird (hier: „Tage“, auch möglich „Mengen“ und „Prozent“). Die Angaben in den Spalten „Von“ und „Bis“ definieren die Gültigkeit des Kriterienbereichs. Abschließend muss eine 
Punktzahl für den definierten Bereich festgelegt werden.

Bitte beachten Sie bei der Definition von Formeln folgende Hinweise:
- Das „Referenzfeld 1“ bildet den IST-Wert ab, das „Referenzfeld 2“ hingegen den 
    SOLL-Wert, welcher die Basis des Vergleichs darstellt.
- Weiterhin ist zu beachten, dass bei der Verwendung von Formeln zum prozentualen 
    Vergleich Kommata („,“) durch Punkte („.“) ersetzt werden müssen.
- Bitte nutzen Sie innerhalb der Formeln keine Pipezeichen („|“).

Für das Beispiel der Liefertreue, wurde der „Kriterien Detail Code“ „FRUEH“ definiert (vgl. 
Abbildung 10). Hier werden die Felder „zugesagtes Wareneingangsdatum“ und „Buchungsdatum“ aus der Tabelle „Einkaufslieferzeile“ verglichen. Liegt das Datum des Feldes „zugesagtes Wareneingangsdatum“ vor dem Datum des Feldes „Buchungsdatum“, trifft das Kriterium zu und die Lieferung wird mit 100 Punkten bewertet. Es werden dem Beispielprozess
entsprechend die Werte geprüft (z.B. 13.03.2017 > 12.03.2017).
Nachdem Sie alle gewünschten Einstellungen vorgenommen haben, verlassen Sie die Maske 
durch einen Klick auf die Schaltfläche „OK“. Um ein vollständig definiertes Kriterium zu aktivieren, aktivieren Sie das jeweilige Kriterium über den Haken „Zuteilen“ (vgl. Abbildung 9) für 
die aktuelle Lieferantenbewertung.
Nehmen Sie im Anschluss die Einrichtung für die weichen Kriterien vor. 

![](images/connectornav/easysupraWeb/Abb11.png)

**Abbildung 11: Einrichtungsassistent – Stufe 2**

Über einen Klick auf die Gewichtungszahl der „weichen“ Faktoren gelangen Sie zur Einrichtung dieser

![](images/connectornav/easysupraWeb/Abb12.png)

**Abbildung 12: Definition der weichen Kriterien**

Über die Schaltfläche „Kriterium Einrichtung“ (vgl. Abbildung 12) gelangen Sie zur Profilbefragung des ausgewählten Kriteriums. Hier werden die Funktionalitäten der Business Central
Standard Kontakt-Profilbefragung verwendet (vgl. Abbildung 13). An dieser Stelle definieren 
Sie Ihre Fragen und die Antworten. Sie hinterlegen pro Kriterium nur 1 Frage inklusive der 
entsprechenden Antworten. Im aktuellen Beispiel gehört also die Frage „Werden Auftragsbestätigungen verschickt?“ mit den Antworten „Ja“ und „Nein“ zum weichen Kriterium „Auftragsbestätigung“ (vgl. Abbildung 13). Wenn Sie eine Punktzahl vergeben möchten, kann diese 
unter dem Feld „Bis Wert“ an der Antwort hinterlegt werden. Bei der Berechnung der Gesamtpunktzahl wird stets die Summe der Antwortpunkte durch die Anzahl der abgegebenen Antworten geteilt, unabhängig des Einrichtungstyps „mehrere Antworten möglich“ – Ja/Nein. Verlassen Sie die Maske mit einem Klick auf den Button „OK“

![](images/connectornav/easysupraWeb/Abb13.png)

**Abbildung 13: Weiche Kriterien über die Standard Profilbefragung einrichten**

inweis: Auch über die Kreditorenkarte können Sie die Profilbefragung vornehmen. Die Antwort wird am Kontakt zum Kreditor hinterlegt. Falls noch kein Kontakt für den Kreditor existiert, wird dieser automatisch angelegt. Bitte beachten Sie, dass dafür in der „Verkauf und 
Marketing Einrichtung“ eine Nummernserie für Kontakte hinterlegt werden muss.
Nach erfolgter Definition aller gewünschten Kriterien gelangen Sie zurück zum Einrichtungsassistenten Stufe 2 (vgl. Abbildung 11).

**Tipp:** Alle definierten Kriterien („harte“ und „weiche“) stehen jetzt für jede neue oder bestehende Lieferantenbewertung zur Verfügung. Die Anlage und Einrichtung ist also einmalig und 
jede Lieferantenbewertung kann sich aus dem Pool der Kriterien fortan bedienen.

Nach der Einrichtung aller Kriterien, betätigen Sie im Assistenten die Schaltfläche „Weiter“.
