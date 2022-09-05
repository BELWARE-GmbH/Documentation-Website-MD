---
title: "Buchen und Verarbeiten"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 8
---

#### Funktion Buchen & Verarbeiten

Ähnlich wie die Standardfunktionen buchen & senden bzw. buchen & drucken, erlaubt die Funktion Buchen & Verarbeiten ihnen einen Beleg nach dem buchen noch weiter zu verarbeiten. Im Gegensatz zum Standard erlaubt Ihnen die Funktion ein Verarbeiten des Belegs durch alle Connector NAV Schnittstellen. Außerdem haben Sie die Möglichkeit einen Beleg gleich mehrfach über verschiedene Kanäle z.B. Brief & E-Mail zu versenden.

Wie genau der jeweilige Beleg verarbeitet werden soll, können Sie in in der **Connector NAV Kommunikationsmatrix** festlegen.

|![](images/connectornav/matrix/buchen1.png)<left>Die Funktion Buchen & Verarbeiten in einer der Connector NAV Templates</left>|
|-|

Standardmäßig unterstützen wir buchen & verarbeiten in den folgenden Belegen, via unserer Templates.

-   Verkaufsaufträge

-   Verkaufsrechnungen

-   Verkaufsgutschriften

-   Verkaufsreklamation

-   Mahnungen (registrieren & verarbeiten)

#### Einrichtung 

Bevor die Funktion **Buchen & Verarbeiten** korrekt genutzt werden kann, muss zunächst in der Kommunikationsmatrix festgelegt werden, wie die Belege nach dem Buchungsprozess verarbeitet werden sollen.

Dieser Eintrag in der Matrix muss in dem jeweiligen Folgebericht vorgenommen werden, also z.B. für Verkaufsrechnungen in den geb. Verkaufsrechnungen.

|![](images/connectornav/matrix/buchen2.png)<left>Beispieleinträge in der Matrix für **Buchen & Verarbeiten**</left>|
|-|

Es muss nun pro Debitor & Bericht eingestellt werden, wie Belege verarbeitet werden sollen. Im Screenshot finden Sie eine Beispieleinrichtung der Matrix, auf die nun zurückgegriffen wird, wenn die Funktion buchen & verarbeiten benutzt wird.

{{<notice info Hinweis>}}
Die Einrichtung für **Buchen und Verarbeiten** funktioniert analog zu der Einrichtung für den [**Stapelversand**](de-de/connectornav/matrix/stack_mode/).
Wenn Sie eine Matrix-Zeile als Aktion für Buchen und Verarbeiten festlegen möchten, so muss das Häkchen für **Stapelversand** angehakt werden.
{{</notice>}}

##### Nutzung der Funktion

Nachdem die Kommunikationsmatrix eingerichtet wurde, kann die Funktion nun eingesetzt werden.

**Ein konkretes Beispiel:**

Eine Rechnung für den Debitor ***Harburger Bäderwelt*** soll gebucht und anschließend per Connector NAV verarbeitet werden. Durch öffnen der Kommunikationsmatrix kann überprüft werden, wie Belege für den gewünschten Debitor/Kreditor verarbeitet werden:
|![](images/connectornav/matrix/buchen3.png)<left>Beispieleinrichtung für den Debitor: ***Harbuger Bäderwelt***</left>|
|-|

In diesem konkreten Beisipel wurde eingerichtet, dass gebuchte Verkaufsrechnungen per Mail an eine ausgewählte Adresse (demo@belware) gesendet werden.
Gleichzeitig wird aber auch veranlasst, dass der Beleg auch noch über die E-Post API-Schnittstelle postalisch zum gewünschten Debitor gelangt.

Wird nun also buchen & verarbeiten ausgelöst, so wird im ersten Schritt die Rechnung gebucht, anschließend wird der gebuchte Beleg an die ausgewählte E-Mail-Adresse versendet und als Brief verschickt.

{{<notice info>}}
**Buchen und Verarbeiten** funktioniert ebenfalls auf mehrfach selektierte Belege.
{{</notice>}}