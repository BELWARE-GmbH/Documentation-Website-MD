---
title: "Kundenreferenz / Leitweg-ID"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Kundenreferenz

Die Kundenreferenz stellt eine Kennung dar, die einen Auftragnehmer eindeutig identifiziert.
Der Standard XRechnung verwendet das Konzept der **Leitweg-Id** für die Adressierung von öffentlichen Auftraggebern.
Weiter unten erfahren Sie mehr zum Thema Leitweg-Id.

Grundsätzlich kann der Standard XRechnung allerdings auch im nicht-öffentlichen Raum verwendet werden.
Hier werden überlicherweise keine Leitweg-Ids, sondern eigene Kennungen verwendet.

### Leitweg-ID

Die Leitweg-ID ist auf jeder elektronischen Rechnung an öffentliche Auftraggeber der Bundesverwaltung anzugeben.

Die Leitweg-ID soll die Adressierung und ggf. Weiterleitung der eingegangenen elektronischen Rechnung zu den nachgelagerten Rechnungsbearbeitungssystemen der angeschlossenen Verwaltungseinheiten ermöglichen. Um die Akzeptanz und Handhabbarkeit sowohl für öffentliche Auftraggeber als auch für ihre Dienstleister und deren Serviceanbieter zu optimieren, haben sich Bund und Länder im Rahmen des Betriebs des Standards XRechnung auf eine einheitliche Systematik geeinigt.

Die Leitweg-ID setzt sich grundsätzlich aus drei Bestandteilen zusammen:

- Grobadressierung,
- Feinadressierung und
- Prüfziffer.

Anhand der so genannten Grobadressierung wird unterschieden, ob der Rechnungsempfänger zur Bundesverwaltung oder zu einem Bundesland gehört:

- 991: Der Rechnungsempfänger ist Teil der unmittelbaren Bundesverwaltung oder ein Verfassungsorgan und empfängt elektronische Rechnungen über die ZRE.
- 992:
  a) Der Rechnungsempfänger ist Teil der mittelbaren Bundesverwaltung und empfängt elektronische Rechnungen über die OZG-RE.
  b) Der Rechnungsempfänger ist ein Bundesland, welches elektronische Rechnungen über die OZG-RE empfängt.
- 993: Der Rechnungsempfänger ist Teil der mittelbaren Bundesverwaltung und empfängt über eine eigene Lösung (weder ZRE noch OZG-RE) elektronische Rechnungen.

Beispiel Aufbau einer Leitweg ID: 123-456-76

Ein Rechnungsempfänger der Bundesverwaltung hat mindestens eine Leitweg-ID.

Die Ausgestaltung der Leitweg-ID in einer Behörde basiert auf der Organisation der internen Rechnungsbearbeitung. Behörden mit mehreren Leitweg-IDs stellen über die Angabe der entsprechenden Leitweg-IDs sicher, dass die Rechnung direkt an den zuständigen Bereich für die Bewirtschaftung adressiert wird. Es ist daher essentiell, dass stets die im Auftrag angegebene Leitweg-ID für die Rechnungsstellung verwendet wird.

Die Leitweg-IDs werden dezentral von Bund und Ländern vergeben. Daher existiert aktuell auch keine bundesweite Datenbank, in der alle Leitweg-IDs eingetragen sind.

**Die Leitweg-ID erhalten Sie ausschließlich von dem jeweiligen Rechnungsempfänger.**