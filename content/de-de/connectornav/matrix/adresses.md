---
title: "Empfänger-Mailadressen"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 4
---

#### Wo kommen nun die Empfänger-Mailadressen her? (Nutzung ohne Ziel- und Kommunikationsmatrix)

Der Connector NAV / 365 BC arbeitet analog zum Standardversand. Anhand verschiedener Beispiele erklären wir, wie der Ablauf eines Mailversands funktioniert. Für die folgenden 3 Beispiele beschränken wir uns auf den Report Angebote. Leistungsempfänger ist gleich Rechnungsempfänger. Der Ablauf ist bei jedem Bericht gleich anzuwenden.

##### Beispiel 1 – Angebot an Debitor ohne Personen-Kontakt

Sie haben Ihr Angebot angelegt und wollen es nun versenden. Der Debitor ist hinterlegt, jedoch ist im Bereich „Verk. an“ kein Kontakt hinterlegt.

![](/images/connectornav/matrix/adressen1.png)<center>Das Angebot geht an Debitor 10000 – Möbel-Meller.</center>


Wird nun der Mailversand ausgelöst, wird die E-Mail, die bei dem Debitor hinterlegt ist, gezogen.

![](/images/connectornav/matrix/adressen2.png)<center>Zieladresse ist info\@moebel-meller.de</center>


##### Beispiel 2 – Angebot an Debitor mit Personen-Kontakt

Das Angebot geht an einen schon bestehenden Debitor und wird an einen Personen-Kontakt gesendet. Unter „Verk. an“ Personen-Kontakt hinterlegen, welcher als Ansprechpartner für das vorliegende Angebot dient.

![](/images/connectornav/matrix/adressen3.png)<center>Ansprechpartner ist Michael Emanuel</center>

Der unter „Verk. an“ hinterlegte Kontakt hat eine höhere Priorität als der Debitor. Für den Versand wird die Adresse von Herrn Emanuel gezogen.

![](/images/connectornav/matrix/adressen4.png)<center>Zieladresse ist michael.emanuel\@contoso.com</center>


##### Beispiel 3 – Angebot an ein Unternehmen ohne Kontakt

Sie haben ein Angebot für einen potenziellen Neukunden vorbereitet, zu dem es noch keinen Debitor gibt. Es gibt einen konkreten Ansprechpartner, also wird im Angebot der Kontakt des Unternehmens angegeben.

![](/images/connectornav/matrix/adressen5.png)<center>Im Angebot ist der Kontakt der Firma hinterlegt</center>


Wird nun der Versand ausgelöst, wird die E-Mail an die im Firmenkontakt hinterlegte E-Mail-Adresse geschickt, in diesem Fall add-on.marketing\@contoso.com.

![](/images/connectornav/matrix/adressen6.pngg)<center>Die Zieladresse ist die des Unternehmens.</center>

##### Beispiel 4 – Angebot an Unternehmens-Kontakt ohne Debitor

Sie haben wieder Ihr Angebot angelegt, aber es geht an einen potenziellen Neukunden, zu dem es noch keinen Debitor gibt. Also ist im Angebot nur der Kontakt des Ansprechpartners bei der Firma hinterlegt.

![](/images/connectornav/matrix/adressen7.png)<center>Das Angebot geht an KT100190 – Chris McGurk.</center>


Wird nun der Mail-Versandknopf gedrückt, wird folglich die E-Mail-Adresse von Chris McGurk ausgewählt.

![](/images/connectornav/matrix/adressen8.png)<center>Zieladresse ist chris.mcgurk\@contoso.com</center>

