---
title: "Dokumentenlayouts"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Einrichtung

### Einrichten der Dokumentenlayouts

Damit die Connector 365 Easy Batch App korrekt genutzt werden kann, müssen Sie zunächst bei den Debitoren welche Belege im Stapelversand erhalten wollen dies entsprechend einrichten.

Öffnen Sie den gewünschten Debitor und navigieren Sie in die Dokumentenlayouts

**Navigieren -> Dokumentenlayouts**

![](images/apps/easynavigate.PNG)

Dort angekommen, werden Sie zwei neue Schaltflächen entdecken, zum einen einen Haken für den Stapelmodus und zum anderen ein Dropdown-Menü für den Jobmodus.

Der Haken im Feld **Stapelmodus** aktiviert für diesen Eintrag den Stapelmodus.

Die Auswahl im Feld **Jobmodus** gibt an wie genaue die Belege des Debitors verarbeitet werden.

Über diese beiden Schaltflächen steuern Sie den Stapelmodus des Debitors.

![](images/apps/easylayouts.PNG)

Sie können sämtliche Verwendungszwecke einrichten und im Stapelmodus nutzen.

#### Jobmodus
Der Jobmodus gibt an wie der Stapel gehandhabt wird. Standardmäßig stehen Ihnen dort drei Optionen zur Verfügung - E-Mail, Druck und Leer.

**E-Mail**
Im Modus E-Mail, werden die Belege des bei Benutzung der Stapelfunktion per E-Mail versendet.

**Druck**
Im Modus Druck, werden die Belege des Debitors bei Benutzung der Stapelfunktion ausgedruckt.

**Leer**
Ein leeres Feld ist ein Sonderfall. Wird das Feld leer gelassen so greift das *Belegsendeprofil* des jeweiligen Debitors und die dort eingerichtete Option wird für den Debitor bei Benutzung der Stapelfunktion genutzt.

Für den Fall dass Sie entweder die Connector 365 E-POST App, die Connector 365 XRechnung App oder beide Apps einsetzen, so stehen Ihnen noch die folgenden Optionen zur Verfügung:

**XRechnung**
Im Modus XRechnung, werden die Belege des Debitors bei Benutzung der Stapelfunktion als XRechnung versendet. Dieser Modus benötigt ein vorheriges einrichten der Connector 365 XRechnung App. Weitere Informationen hierzu finden Sie in der Einrichtung der [Connector 365 XRechnung App](/de-de/apps/xrechnung/first-steps/setup/)

**E-POST**
Im Modus E-POST, werden die Belege des Debitors bei Benutzung der Stapelfunktion als Brief versendet. Dieser Modus benötigt ein vorheriges einrichten der Connector 365 E-POST App. Weitere Informationen hierzu finden Sie in der Einrichtung der [Connector 365 E-POST App](/de-de/apps/e-post/first-steps/setup/)

Es ist grundsätzlich möglich mehrere Jobmodi pro Beleg einzustellen, diese werden dann nacheinander abegearbeitet.

#### Beispiel

Wenn Sie nun für den ausgewählten Debitor den Stapelversand für Rechnungen im Mailversand nutzen wollen, müssen Sie die Einrichtung wie folgt vornehmen.

![](images/apps/easyexample.PNG)






