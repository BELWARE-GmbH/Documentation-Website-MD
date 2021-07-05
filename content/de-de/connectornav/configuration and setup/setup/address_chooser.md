---
title: "Auswahl der Zieladressen"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---

#### Auswahl der Zieladressen
{{<img src="/images/connectornav/benreport_einr_epost_ausw_zieladressen.png" caption="Connector NAV Auswahl Zieladresse">}}

Über die Auswahl der Zieladressen kann pro Jobmodus selbstständig eingestellt werden, welcher Beleg an welchen Empfänger geht. Auch individuelle Standardanpassungen können berücksichtig werden.<br />Die Abbildung oben zeigt ein Beispiel für die Einrichtung der Zieladressen für Rechnungen, Gutschriften und Angeboten. Im Klartext gibt die Einrichtrung an, dass E-Mails für Rechnungen an das Feld „Rechnung an Kontaktnr.“ gehen und die Zieladresse sich im Feld „E-Mail“ befindet.<br />Für die Einrichtung sind erweiterte Kenntnisse der Objekt-Nummern und Zugehörigkeiten zwischen den Objekten notwendig.

|Feldbeschreibung | |
|---|---|
|Jobmodus | Auswahl des Jobmodus.|
|BerichtsID | Auswahl des Berichtes, in der Abbildung oben handelt es sich um die Standardberichte. Die BerichtsID lässt sich durch die Dynamics NAV Berichtsauswahl ermitteln.|
|Berichtsname | Kalkuliertes Feld, zeig den Berichtsnamen an.|
|TabellenID | ID der Tabelle, auf die der Bericht verweist. Diese Information ist wichtig, um eine Auswahl der Felder zu ermöglichen.|
|Tabellenname | Kalkuliertes Feld, zeigt den Tabellennamen an.|
|Ziel aus Feldnr. | Auswahl des Feldes der Zielperson.|
|Ziel aus Feldname | Kalkuliertes Feld, zeigt den Feldnamen an.|
|Zieladresse aus Feldnr. | Auswahl der Zieladresse, basierend auf Kontakt, Kreditor oder Debitor.|
|Zieladresse aus Feldname | Kalkuliertes Feld, zeigt den Feldnamen an.|