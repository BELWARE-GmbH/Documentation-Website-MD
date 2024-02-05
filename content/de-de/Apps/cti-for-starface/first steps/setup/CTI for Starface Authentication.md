---
title: "CTI for STARFACE Authentifizierung"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### CTI for STARFACE Authentifizierung

Um Ihrer STARFACE-Telefonalnage den Zugriff auf Business Central zu ermöglichen, muss sich das STARFACE Modul mit den nötigen Berechtigungen gegenüber Business Central authentifizieren.
Dies wird über eine Microsoft Entra (ehemals Microsoft Azure) Anwendung ermöglicht, welche zentral von uns bereitgestellt wird und liefert die nötigen Berechtingen.
Sie müssen dieser Anwendung lediglich noch die Zustimmung erteilen.

Um die Microsoft Entra Anwendung einzurichten, nutzen Sie zunächst die Suchfunktion von Business Central und öffnen die **Microsoft Entra Anwendungen** umd die Liste der Microosft ENtra Anwednungen zu öffnen.
![](images/apps/cti_starface/de/microsoft-entra-applications.png)

Dort öffnen Sie die Anwendung **Authentication for Connector 365 CTI for STARFACE**.
Hier können Sie auch die Berechtigungen prüfen, welche die Anwednung in Business Central erhält.
![](images/apps/cti_starface/de/microsoft-entra-application.png)

Um die EInrichtung abzuschließen, führen Sie die Aktion **Zustimmung erteilen** aus.
Dort öffnet sich nun ein Fenster zu Authentifizierung.
Hier müssen Sie sich mit einem Adminstartor Konto Authentifizieren.

Nach der Authentifizierung müssen Sie nun noch den **Status** auf **aktiviert** setzen.
Damit ist die EInrichtung der AUthentifizierung abgeschlossen.
