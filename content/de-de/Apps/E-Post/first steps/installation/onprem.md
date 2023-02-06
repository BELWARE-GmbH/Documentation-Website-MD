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
Sie erhalten von uns die Dateien für die Apps Connector 365 Base & Connector 365 E-POST* App per Mail. Damit Sie die Apps nutzen können, müssen diese zunächst veröffentlicht und anschließend installiert werden.

#### Veröffentlichen der Apps Connector 365 Base & E-POST
Das Veröffentlichen der Apps Connector 365 Base & E-POST erfolgt über die **Business Central Administration Shell**. Transferieren Sie zunächst die von uns an Sie gesendeten Dateien auf den Server, auf dem Ihre Business Central Instanz läuft.

![](images/apps/general/adminshell.png)

Starten Sie nun die **Business Central Administration Shell** um den Prozess der Veröffentlichung zu starten. Navigieren Sie mit der Administration Shell zunächst an den Speicherort für die Datei mit dem **cd** Befehl.

**Beispiel:**

```cd C:\Apps```

Nun, da Sie sich im entsprechenden Ordner befinden, können Sie mit Hilfe von folgendem Befehl zunächst die App Connector 365 Base veröffentlichen.

{{< notice info "Hinweis" >}}
 _Die Reihenfolge der Veröffentlichung ist wichtig, bitte veröffentlichen Sie immer zuerst die Connector 365 Base App._
{{< /notice >}}
#

**Beispiel:**

```Publish-NAVApp -ServerInstance IhreBusinessCentralInstanz -Path ".\BasisApp.app" -SkipVerification```

Anschließend sollten Sie den Prozess auch noch für die eigentliche Connector 365 E-POST App durchführen

**Beispiel:**

```Publish-NAVApp -ServerInstance IhreBusinessCentralInstanz -Path ".\E-POST.app" -SkipVerification```

Beide Apps sollten nun im System veröffentlicht sein.
#

#### Installieren der Apps Connector 365 Base & E-POST
In der Erweiterungsverwaltung Ihrer Umgebung werden die beiden Apps nun als veröffentlicht angezeigt, jedoch sind diese noch nicht installiert.

![](images/apps/E-POST/de-de/app_published.png)

##### Installieren via des Clients
Öffnen Sie Ihre Business Central Umgebung, öffnen Sie die Suchfunktion und suchen Sie nach der **Erweiterungsverwaltung**.

Dort sollten Sie nun die beiden Apps vorfinden mit dem Status nicht installiert. Mit einem Klick auf die 3 Punkte der jeweiligen App können Sie diese nun über den Punkt **Installieren** in Ihrer Umgebung installieren.

![](images/apps/E-POST/de-de/app_install.png)

##### Installieren via der Administration Shell
Für den Fall, dass Sie die Installation über die Administration Shell vornehmen wollen (dies hat den Vorteil, dass man gleich auf mehreren Tenants installieren kann), müssen Sie den **Install-NAVApp** Befehl nutzen. Dabei sollten Sie die **Tenant ID** spezifizieren. In den folgenden Beispielen installieren wir die Apps in zwei Tenants.

{{< notice info "Hinweis" >}}
 _Auch die Reihenfolge bei der Installation spielt eine Rolle, installieren Sie bitte zuerst immer die Connector 365 Base App_
{{< /notice >}}
#

Für die Installation der Connector 365 Base App nutzen Sie den folgenden Befehl:

**Beispiel:**

```Install-NAVApp -ServerInstance IhreBusinessCentralInstanz -Name "Connector 365 Base" -Tenant Tenant1, Tenant2```

Es folgt noch die Connector 365 E-POST App:

**Beispiel:**

```Install-NAVApp -ServerInstance IhreBusinessCentralInstanz -Name "Connector 365 E-POST" -Tenant Tenant1, Tenant2```

Sie können nun mit der [Einrichtung](/de-de/apps/e-post/first-steps/setup/) starten.



***Die Connector 365 E-POST App, setzt auf die E-POSTBUSINESS API, einen Service der Deutschen Post.**



