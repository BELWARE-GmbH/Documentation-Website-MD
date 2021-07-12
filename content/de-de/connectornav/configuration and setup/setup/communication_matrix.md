---
title: "Kommunikationsmatrix"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 5
---

#### Kommunikationsmatrix
Die Kommunikationsmatrix ist die spezielle Einrichtung von Zieladressen. Mit der oben beschriebenen Übersicht werden globale Zieladressen bestimmt (z.B. Verkauf an Kontakt, Feld E-Mail). Mit der Kommunikationsmatrix können Ausnahmen bestimmt werden.

![](/images/connectornav/benreport_einr_epost_komm_matrix.png)<center>_Connector NAV Kommunikationsmatrix Übersicht_</center>

Im unteren Bereich der Karte gibt es eine Übersicht der vorhandenen Globalen Einstellungen. Die Ausnahmen wirken sich nur aus, wenn es auch eine globale Einstellung gibt.

|Feldbeschreibung | |
|---|---|
|Jobmodus | Auswahl des Jobmodus.|
|BerichtsID | Auswahl des Berichtes, in der Abbildung oben handelt es sich um die Standardberichte. Die BerichtsID lässt sich durch die Dynamics NAV Berichtsauswahl ermitteln.|
|Berichtsname | Kalkuliertes Feld, zeigt den Berichtsnamen an.|
|TabellenID | ID der Tabelle der Zielperson. Mögliche Auswahl: Kontakt, Debitor oder Kreditor.|
|Tabellenname | Kalkuliertes Feld, zeigt den Tabellennamen an.|
|Kundennr. | Hier wird die Nr. des Kontakts, Debitors oder Kreditors ausgewählt. Die Auswahl ist abhängig von der Eingabe im Feld TabellenID.|
|Zieladresse | Hier kann die abweichende Zieladresse eingetragen werden.|
|Zieladresse 2(cc)<br />Zieladresse 3(bcc) | Hier kann eine CC und BCC Adresse eingetragen werden (nur für Versand über SMTP oder Outlook)|
|PDFA Ebene | Hier lässt sich der Grad der PDF/A Verschlüsselung festlegen. Auswahl zwischen keiner, PDF/A-1b, PDF/A-3b|

#### Stapellauf im Matrix Modus
In der Kommunikationsmatrix steht Ihnen die Möglichkeit zur Verfügung für Stapellauf bestimmte Jobmodi zu definieren. So können Sie mit einem Stapellauf Ihrem Kunden beispielsweise eine E-Mail schicken und gleichzeitig ein Fax.<br />Um diese Funktion zu benutzen müssen Sie zunächst die Kommunikationsmatrix aufrufen und dort einen Ablauf definieren. Dabei darf nicht vergessen werden den Haken bei Stapelmodus zu setzen, sonst wird der Punkt während eines Stapellaufs ignoriert.

![](/images/connectornav/benreport_einr_epost_stapellauf.png)<center>_Übersicht Kommunikationsmatrix, die Felder für einen Stapellauf sind aktiviert._</center>

In unserem Beispiel kriegt der Kunde Möbel-Meller bei einem Rechnungsstapellauf eine Rechnung per Fax und eine per E-Mail. Nun da der Prozess definiert ist, können Sie (in diesem Fall) in die Geb. Verkaufsrechnungen wechseln und den Stapellauf auslösen.

![](/images/connectornav/benreport_einr_epost_stapellauf2.png)<center>_Connector NAV Funktionen in Template Geb. Verkaufsrechnungen, Knopf für Stapellauf ist markiert_</center>

Nun wird der Stapellauf wie in der Kommunikationsmatrix definiert ausgeführt.