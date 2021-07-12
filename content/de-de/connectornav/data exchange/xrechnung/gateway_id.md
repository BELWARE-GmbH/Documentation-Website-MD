---
title: "Leitweg-ID"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 4
---

##### Leitweg-ID

Wie bereits erwähnt, dient die Leitweg-ID der eindeutigen Identifikation von Rechnungsempfängern, um die Adressierung und ggf. Weiterleitung von elektronischen Rechnungen zu den richtigen Verwaltungseinheiten zu ermöglichen. Grundsätzlich besteht eine Leitweg-ID aus folgenden Bestandteilen:

-   Grobadressierung

-   Feinadressierung (optional)

-   Prüfziffer

Weitere Informationen zum Aufbau einer Leitweg-ID finden Sie [hier](https://www.e-rechnung-bund.de/faq-e-rechnung/faq-leitweg-id/).

Der Connector ist in der Lage, die Syntax einer Leitweg-ID auf Richtigkeit zu überprüfen.   
Das heißt, es wird geprüft, ob die einzelnen Bestandteile die erlaubte Anzahl an Zeichen enthalten, und ob die Prüfziffer korrekt ist. **WICHTIG**: Es wird **nicht** geprüft, ob die Leitweg-ID tatsächlich vergeben ist. So würde der Connector die Leitweg-ID: 123-456-76 akzeptieren, da sowohl Grob- als auch Feinadressierung die erlaubte Anzahl an Zeichen besitzen, und die Prüfziffer korrekt ist, jedoch gibt es keine Garantie, dass es diese Leitweg-ID auch wirklich gibt.

Häufig geben öffentliche Auftraggeber ihre Leitweg-ID auf Ihren Internet-Seiten bekannt.  
Außerdem stellen einige Bundesländer ein Verzeichnis über bekannte Leitweg-IDs zur Verfügung, in der Sie IDs gegenprüfen können.