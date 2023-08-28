---
title: "Prüfbericht"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
# Prüfbericht

Optional kann über die [**Connector 365 Einrichtung**](/de-de/apps/xrechnung/first-steps/setup/base-setup/) die Validierung von XRechnung-Dateien aktiviert werden. Dabei wird eine XRechnung auf korrekten Syntax und Konformität zu den formalen Vorgaben für XRechnung geprüft.
Das Tool welches hierbei genutzt wird, ist der offizielle **KoSIT Validator**.
Eine solche Prüfung, wie zuvor beschrieben, findet in der Regel auch bei dem Empfänger statt.
Der Vorteil des Einschaltens der Prüfung ist also der, dass Sie ganz einfach eine gleichwertige Prüfung im Anschluss der XRechnung-Erzeugung ausführen können.
Somit können Sie fehlerhafte Einträge frühzeitig erkennen und nicht erst dann, wenn der Empfänger mittels Prüfung auf die gleichen Schlüsse kommt und die Rechnung zurückweist.

## Abgelehnte XRechnungen

Wenn die Validierung von XRechnungen aktiv ist, und beim [Versand](/de-de/apps/xrechnung/working-with-xrechnung/sending/) eine erzeugte XRechnung als nicht konform zu den formalen Vorgaben für XRechnung geachtet wird, kommt es zu einer Fehlermeldung. Sobald Sie diese bestätigen öffnet sich der zugehörige Prüfbericht:


|![](images/XRechnung/xrechnungbericht.png)|
|-|

Auf dem Prüfbericht kann detailliert eingesehen werden, welche Felder und Konstellationen den Vorgaben für XRechnungen widersprechen.

Die häufigsten Fehlerquellen können durch Einrichtung gelöst werden. Diese haben wir [hier](de-de/apps/xrechnung/first-steps/setup/) protokolliert.
