---
title: "OnPrem"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Installation

### OnPrem
Sie erhalten von uns die Connector 365 Upgrade App als für Ihr System passendes Runtime-Paket per Mail. Damit Sie die App nutzen können, muss diese zunächst veröffentlicht und anschließend installiert werden.
Da die App nur notwendig ist, wenn Sie von einem Altsystem mit Connector NAV/BC auf ein System mit Connector 365 Apps umsteigen, wird hier davon ausgegangen, dass die Connector 365 Base App bereits auf Ihrem System installiert ist.

#### Veröffentlichen der Connector 365 Upgrade App
Das Veröffentlichen der Connector 365 Upgrade App erfolgt über die **Business Central Administration Shell**. Speichern Sie zunächst das von uns an Sie ausgelieferte Runtime-Paket auf dem Server, auf dem Ihre Business Central Instanz läuft.

![](images/apps/adminshell.PNG)

Starten Sie nun die **Business Central Administration Shell** um den Prozess der Veröffentlichung zu starten. Navigieren Sie innerhalb der Administration Shell mit dem **cd** Befehl zunächst an den Speicherort des Runtime-Paketes.

**Beispiel:**

```cd C:\Apps```

Nun, da Sie sich im entsprechenden Ordner befinden, können Sie mit Hilfe von folgendem Befehl die Upgrade App veröffentlichen:

**Beispiel:**

```Publish-NAVApp -ServerInstance IhreBusinessCentralInstanz -Path ".\UpgradeApp.app -SkipVerification"```

Die App sollte nun im System veröffentlicht sein.

#

#### Installieren der Connector 365 Upgrade App

In der Erweiterungsverwaltung Ihrer Umgebung wird Ihnen die App nun als veröffentlicht angezeigt, jedoch ist sie noch nicht installiert.

![](images/apps/Upgrade%20App/erweiterungsverwaltung_nicht_installiert.png)

##### Installieren via des Clients
Öffnen Sie Ihre Business Central Umgebung, öffnen Sie die Suchfunktion und suchen Sie nach der **Erweiterungsverwaltung**.

Dort sollten Sie nun die App vorfinden mit dem Status nicht installiert. Mit einem Klick auf die 3 Punkte neben der App können Sie diese nun über den Punkt **Installieren** in Ihrer Umgebung installieren.

![](images/apps/appinstallde.PNG)

##### Installieren via der Administration Shell
Für den Fall, dass Sie die Installation über die Administration Shell vornehmen wollen (dies hat den Vorteil, dass man gleich auf mehreren Tenants installieren kann), müssen Sie den **Install-NAVApp** Befehl nutzen. Dabei sollten Sie die **Tenant ID** spezifizieren. Im folgenden Beispiel installieren wir die Apps in zwei Tenants.

Für die Installation der Connector 365 Upgrade App nutzen Sie den folgenden Befehl:

**Beispiel:**

```Install-NAVApp -ServerInstance IhreBusinessCentralInstanz -Name "Connector Upgrade" -Tenant Tenant1, Tenant2```

Sie können nun mit der [Einrichtung](de-de/apps/connector-upgrade/first-steps/setup/) starten.