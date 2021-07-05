---
title: "Konfiguration"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---

### Konfiguration

#### Die Connector NAV Konfiguration

##### Konfigurationseinstellung

{{<img src="/images/connectornav/konfiguration_connectornav.png" caption="Connector NAV Konfiguration, Aktionen">}}

Bevor Sie mit der Einrichtung des Connector NAV beginnen, werden Ihre individuellen 
Konfigurationsdaten geladen. Dafür betätigen Sie zu Beginn die Aktion  
**Konfigurationseinstellung**.  
Die Konfiguration gibt Aufschluss über Ihre erworbenen Module.

##### Register Codeunit

{{<img src="/images/connectornav/register_codeunit.png" caption="Connector NAV Konfiguration, Register Codeunit">}}

|Feldbeschreibung|  |
|---|---|
|Fax-, Mail-, SMS-, PDF-, CTI-, IncaMail-, Archiv Codeunit | Für jedes erworbene Modul wurde die entsprechende Objektnummer der Codeunit eingetragen.|

##### Register Page

{{<img src="/images/connectornav/register_page.png" caption="Connector NAV Konfiguration, Register Page">}}

|Feldbeschreibung|  |
|---|---|
|Dialog Page | Dies ist die Objektnummer für die Dialog-Page.|
|Dialog Page E-POST | Dies ist die Objektnummer für die Dialog-Page E-POST.|

##### Register Schnittstelle

{{<img src="/images/connectornav/register_schnittstelle.png" caption="Connector NAV Konfiguration, Register Schnittstelle">}}

|Feldbeschreibung|  |
|---|---|
|Schnittstelle | Diese Felder geben Auskunft, über welche Schnittstelle die Fax- bzw. Mail-Funktion aufgerufen wird. Verfügbare Schnittstellen:|
|Mail-Schnittstelle | Twinfax, OfficeMaster, TOBIT, C3000, SMTP, Outlook |
|Fax-Schnittstelle | Twinfax, OfficeMaster, Faxmaker, TOBIT, C3000 |
|SMS-Schnittstelle | Twinfax, OfficeMaster |
|SMS-Domänenteil | Über diese Funktionalität werden Faxe über SMTP verschickt. <br /> Voraussetzung ist ein SMTP2Fax-fähiges Faxprodukt. |

##### Register Konfiguration

{{<img src="/images/connectornav/register_konfiguration.png" caption="Connector NAV Konfiguration, Register Konfiguration">}}

|Feldbeschreibung|  |
|---|---|
|Fax-, Mail-, SMS-, PdfPaper Client-, PdfPaper Server-, CTI-, IncaMail-, E-POST Granule | Geben Auskunft über die erworbenen Module. |
|Benutzer | Gibt Auskunft über die Anzahl der lizensierten Connector NAV Benutzer |