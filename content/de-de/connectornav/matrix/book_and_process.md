---
title: "Buchen und Verarbeiten"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 8
---

#### Funktion buchen & verarbeiten

Ähnlich wie die Standardfunktionen buchen & senden bzw. buchen & drucken, erlaubt die Funktion buchen & verarbeiten ihnen einen Beleg nach dem buchen noch weiter zu verarbeiten. Im Gegensatz zum Standard erlaubt Ihnen die Funktion ein verarbeiten des Belegs durch alle Connector NAV Schnittstellen. Außerdem haben Sie die Möglichkeit einen Beleg gleich mehrfach über verschiedene Kanäle z.B. Brief & E-Mail zu versenden.

Wie genau der jeweilige Beleg verarbeitet werden soll, können Sie in unserer Kommunikationsmatrix einrichten.

![](/images/connectornav/matrix/buchen1.png)<center>Die Funktion buchen & verarbeiten in einer Template</center>

Standardmäßig unterstützen wir buchen & verarbeiten in den folgenden Belegen, via unserer Templates.

-   Verkaufsaufträge

-   Verkaufsrechnungen

-   Verkaufsgutschriften

-   Verkaufsreklamation

-   Mahnungen (registrieren & verarbeiten)

##### Einrichtung vor dem Einsatz der Funktion

Bevor die Funktion buchen & verarbeiten korrekt genutzt werden kann, muss zunächst ein Eintrag in der Kommunikationsmatrix vorgenommen werden, so dass klar ist, wie der gebuchte Beleg verarbeiten werden soll.

Dieser Eintrag in der Matrix muss in dem jeweiligen Folgebericht vorgenommen werden, also z.B. für Verkaufsrechnungen in den geb. Verkaufsrechnungen.

![](/images/connectornav/matrix/buchen2.png)<center>Beispieleinträge in der Matrix für buchen & verarbeiten</center>

Es muss nun pro Debitor & Bericht eingestellt werden, wie Belege verarbeitet werden sollen. Im Screenshot finden Sie eine Beispieleinrichtung der Matrix, auf die nun zurückgegriffen wird, wenn die Funktion buchen & verarbeiten benutzt wird.

##### Nutzen der Funktion

Nachdem die Kommunikationsmatrix eingerichtet wurde, kann die Funktion nun eingesetzt werden.

**Ein konkretes Beispiel:**

Die Rechnung für den Debitor Harburger Bäderwelt soll gebucht & verarbeitet werden, wir schauen also in der Kommunikationsmatrix nach, was für den Debitor eingerichtet wurde. In diesem Fall ist hier eingestellt, dass geb. Verkaufsrechnungen per Mail an eine ausgewählte Adresse gesendet wird.

Wird nun also buchen & verarbeiten ausgelöst, so wird im ersten Schritt die Rechnung gebucht, anschließend an die ausgewählte E-Mail-Adresse versendet und als Brief verschickt.

Ob & wie die Kommunikationsmatrix für einen jeweiligen Debitor eingerichtet ist, lässt sich jederzeit über einen klicke auf den Knopf „Kommunikationsmatrix“ überprüfen.

![](/images/connectornav/matrix/buchen3.png)<center>Die Einstellungen in der Matrix für die Harburger Bäderwelt</center>
