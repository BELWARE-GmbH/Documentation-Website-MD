---
title: "Abweichender Versand"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 6
---

#### Abweichender Versand – Einsatz der Zieladressen-Matrix

Die bisherigen Beispiele haben alle ohne die Matrix funktioniert, da immer auf direkte zusammenhängende Kontakte zugegriffen wurde.

Nun besteht aber eine abweichende Unternehmenslogik. Der Leistungsempfänger ist nicht gleich der Rechnungsempfänger, sondern ein abweichendes Unternehmen. Auch spielen die Kunden-/Lieferanten bei der Zieladresse eine Rolle. Trotz Personen-Kontakt besteht der Wunsch, Belege aber grundsätzlich an abweichende/globale Adressen zu senden. Solche Anforderungen sind im Standard von Dynamics NAV / 365 BC nicht vorgesehen.

An dieser Stelle kommt im ersten Step die Zieladressenmatrix und im zweiten Step die Kommunikationsmatrix zum Einsatz. So ist eine Steuerung von Empfängeradressen durch einfaches Konfigurieren möglich.

Anhand der folgenden Beispiele erklären wir den Einsatz der Matrix:

##### Beispiel 1 – Angebot direkt an den Rechnungsempfänger 

Wenn es einen abweichenden Rechnungsempfänger gibt und das Angebot an den Kontakt des Rechnungsempfänger statt dem Kontakt des Leistungsempfänger gehen soll, müssen Sie dazu die Zieladressenmatrix einrichten. Diese finden Sie in den Benutzerberichten, in diesem Fall für Angebote.

![](images/connectornav/matrix/umleitung1.png)<center>Benutzerbericht Angebote mit ausgeklappten Zieladressen</center>


Dort muss nun eine Art Umleitung eingerichtet werden.

Zunächst wird der gewünschte Jobmodus ausgewählt. In diesem Fall „eMail“. Weiterhin benötigen Sie die TabellenID. In diesem Beispiel die 36, sowie die „Ziel aus Feldnr.“. Für unser Beispiel benötigen wir die 5053 – „Rech. an Kontaktnr.“. Das letzte Feld bestimmt womit die Zieladresse gefüllt werden soll, in diesem Fall die 102 – „E-Mail“

![](images/connectornav/matrix/umleitung2.png)<center>Ausgefüllte Zieladressen mit den gewünschten Einstellungen</center>


Wieder zurück zu unserem Angebot welches an den Rechnungsempfänger gehen soll. In unserem Fall ist der Leistungsempfänger die Möbel-Meller KG und der Rechnungsempfänger ist Candoxy Canada Inc.

![](images/connectornav/matrix/umleitung3.png)<center>Angebot 1002 für Möbel-Meller – „Lieferung und Abrechnung“ ausgeklappt</center>


Wird nun der Versand per E-Mail ausgelöst, wird als Zieladresse rob.young\@candoxy.ca ausgewählt, da Herr Young als Kontakt bei Candoxy Canada Inc. angegeben wurde. Ist kein Kontakt ausgewählt, wird die E-Mail weiterhin an den Kontakt des Leistungsempfängers gesendet. Im Bereich von „Rech. an“ kann nur entweder der Debitor oder der Kontakt als Empfänger gewählt werden. Eine Prioritätensteuerung findet nicht statt.

![](images/connectornav/matrix/umleitung4.png)<center>Zieladresse ist rob.young\@candoxy.ca</center>

{{<notice info>}}Die Einstellungen, die im Benutzerbericht ausgewählt wurden, sind je nach Einstellungen des Benutzerberichts immer für ALLE Angebote gültig. Es ist nicht möglich nach Kontakt bzw. Debitor zu filtern. Dies ist nur in Verbindung mit der Kommunikationsmatrix möglich.{{</notice>}}

##### Beispiel 2 – Belegversand an abweichende Adressen & Sammeladressen – Einsatz der Kommunikationsmatrix

Nun haben wir ein Angebot, welches an eine übergreifende Sammeladresse (Angebote\@moebel-meller.de) gehen soll. Hier wird nun zusätzlich die Kommunikationsmatrix benötigt. Erst muss aber nochmal der Benutzerbericht für das Angebot angepasst werden. Dort muss lediglich „Ziel aus Feldnr.“ auf „Sell-to Customer no.“ Gestellt werden, der Rest kann wie zuvor eingestellt bleiben. Wählen Sie jetzt in der Angebotsübersicht das gewünschte Angebot aus und klicken Sie auf das Feld „Kommunikationsmatrix“.

![](images/connectornav/matrix/umleitung5.png)<center>Angebotsansicht – Kommunikationsmatrix markiert</center>

Der Aufruf zur Kommunikationsmatrix befindet sich an allen Stellen in unseren Templates und kann beliebig an weiteren gewünschten Pages aufgerufen werden. Unsere Empfehlung ist die Matrix an Kontakte, Debitoren und Kreditoren zu setzen. Wenn Sie die Kommunikationsmatrix an diesen Stellen aufrufen, ist diese bereits auf den gewünschten Kontakt/DEB/KRE vorgefiltert. Hier in diesem Beispiel die Möbel-Meller KG.

In unserem Beispiel sollen alle Angebote an eine zentrale Sammeladresse “Angebote@moebel-meller.de” versendet werden. Dazu werden folgende Einstellung in der Kommunikationsmatrix vorgenommen

{{<notice info>}}Ist die Zieladressenmatrix korrekt eingerichtet so wird automatisch die Zieladresse des jeweiligen Kontakts gezogen, so spart man sich einen Schritt in der Einrichtung. Das Zieladressenfeld lässt sich aber auch manuell anpassen, entweder direkt oder über den Assist-Knopf.{{</notice>}}
####
![](images/connectornav/matrix/umleitung6.png)<center>Nehmen Sie diese Einstellung in der Kommunikationsmatrix vor</center>

Die Kommunikationsmatrix erlaubt uns eine zusätzliche Übersteuerung der Zieladressenmatrix, wenn weitere oder andere Regeln im Versand zum Tragen kommen. Insbesondere auch bei einem automatisierten Stapelversand oder für buchen & senden oder buchen & verarbeiten, um den Einzel- oder Stapelversand zu steuern. In der Übersicht sehen Sie auch nochmal die Zieladressenmatrix. Die auch maßgeblich für die Kommunikationsmatrix ist.

In der Matrix gibt es noch weitere Optionen, auf die wir in dieser Dokumentation nicht näher drauf eingehen. Eine genaue Erklärung, der Standardfelder und der Extrafunktionen finden Sie unter dem Punkt „Optionen & erweiterte Optionen der Kommunikationsmatrix“.

![](images/connectornav/matrix/umleitung7.png)<center>Kommunikationsmatrix für Möbel-Meller mit den gewünschten Einstellungen</center>

Nach dem Einrichten der Kommunikationsmatrix, können Sie den Versand des Angebots auslösen. Die E-Mail wird nun an die von uns soeben eingestellte Zieladresse angebote\@moebel-meller.de versendet.

![](images/connectornav/matrix/umleitung8.png)<center>Zieladresse ist angebote\@moebel-meller.de</center>

