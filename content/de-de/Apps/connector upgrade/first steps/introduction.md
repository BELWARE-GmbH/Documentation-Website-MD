---
title: "Einleitung"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Erste Schritte

### Einleitung

Entwickelt wurde die Upgrade App für Kunden, die von einem System bis BC14 auf eine neuere Business Central Version umsteigen und dabei auch vom Connector NAV/BC auf die Connector 365 Apps upgraden.
Da es zwischen dem Connector NAV/BC und den Connector 365 Apps Unterschiede in der technischen Realisierung gibt, ist es nötig, die zum Connector NAV/BC gehörenden Tabellendaten in die neuen Tabellen der Connector 365 Apps zu transferieren.
Dieser Transfer ist die Aufgabe der Upgrade App.
Im Einzelnen werden folgende Daten übertragen:
- Inhalte der alten Rückmeldungstabelle in die neue Rückmeldungstabelle, um Statusmeldungen zu archivierten Vorgängen anzeigen zu können
- Einträge der alten Jobliste in die neue Aktivitätenliste, um archivierte Vorgänge weiterhin verfügbar zu haben
- Einstellungen aus der Kommunikationsmatrix des Connector NAV/BC in die Dokumentlayouts des Business Central Standards