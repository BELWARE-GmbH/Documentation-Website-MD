---
title: "Aufsetzen eines eigenen Validators"
date: 2023-04-14T10:08:56+09:00
description: 
draft: true
collapsible: false
weight: 10
---
# Einen eigenen Validator aufsetzen

Wie im Bereich XRechnung der Dokumentation bereits erwähnt, nutzt das XRechnungs-Modul von BELWARE einen Dienst 
zum Validieren von Rechnungen und Gutschriften im XRechnung-Format.
Hierbei wird auf ein konfigurierbares XML-Prüftool zurückgegriffen, welches die KoSIT (Koordinierungsstelle für IT) erstmalig veröffentlichte.
In Kombination mit der passenden Konfiguration, ist der Validator in der Lage, 
die Syntax, sowie diverse Regeln und Anforderungen, welche an eine XRechnung gestellt werden, auf dessen Richtigkeit zu prüfen und 
über den Status der Prüfung Protokoll in Form eines Prüfberichts zu führen.

Das BELWARE XRechnung-Modul kann standardmäßig, falls gewünscht, mit einem von BELWARE betriebenen Web-Service auf eben 
diesen Validierungsdienst zugreifen.
Falls Sie unseren Dienst nicht nutzen wollen oder aufgrund von technischen Einschränkungen nicht nutzen können, 
gäbe es die Möglichkeit, selbst einen eigenen Validator zum Validieren einzurichten.

Im Folgenden wird erklärt, welche Schritte notwendig sind, um einen eigenen Validator einzurichten, 
und diesen über das BELWARE XRechnungs-Modul aus Navision/BC anzusprechen.

## Herunterladen der benötigten Komponenten

Zunächst müssen der Validator an sich, und die XRechnung-Konfiguration heruntergeladen werden.
Beides wird vom Anbieter auf Github zur Verfügung gestellt.

|Produkt|Link|
|-|-|
| Validator | [https://github.com/itplr-kosit/validator](https://github.com/itplr-kosit/validator) |
| XRechnung-Konfiguration | https://github.com/itplr-kosit/validator-configuration-xrechnung |

{{< notice info Hinweis >}}
Das XML-Prüftool wurde mithilfe der Programmiersprache Java entwickelt. 
Um dieses also selbst ausführen zu können, wird die Installation der Java-Laufzeitumgebung (Java Runtime Environment (JRE)) vorausgesetzt.
{{</ notice >}}

<br>

Nach Extrahieren des Validators (hier: ***validationtool-1.5.0-standalone***) erhält man folgende Dateien:
|![](images/apps/xrechnung-validator/validationtool-extracted.png)|
|-|

Die Datei: ***validationtool-1.5.0-standalone.jar*** ist hierbei die ausführbare Datei.

Die Dateiinhalte der XRechnung-Konfiguration (hier: ***validator-configuration-xrechnung_2.3.1_2023-01-31***) sehen wie folgt aus:
|![](images/apps/xrechnung-validator/xrechnung-configuration-extracted.png)|
|-|


## Starten des Validators als ***Daemon***

Sind die benötigten Dateien erfolgreich heruntergeladen worden, und ist eine Java-Runtime-Umgebung installiert, 
so kann der Validator wie folgt ausgeführt werden:

Öffnen Sie die Powershell und geben Sie folgenden Befehl ein.

``` powershell
java -jar [Validatorpfad]/validationtool-[Version]-standalone.jar -r [Konfigurationspfad] -s [Konfigurationspfad]/scenarios.xml -D -H [Host] -P [Port]
```

Wobei die Werte in den eckigen Klammern wie folgt zu ersetzen sind:
| Wert | Erklärung | Beispiel |
|-|-|-|
| Validatorpfad | Der Pfad, in welcher die .JAR-Datei des Validators vorhanden ist. | validator-1.5.0-distribution |
| Version | Die Version des ***Validators*** | 1.5.0 |
| Konfigurationspfad | Der Pfad zur ***XRechnung-Konfiguration*** | validator-configuration-xrechnung_2.3.1_2023-01-31 |
| Host | Die Adresse, an der der HTTP-Server "lauscht" | localhost / 127.0.0.1|
| Port | Der Port, über den der HTTP-Server angesprochen wird | 12345 |

Das Flag ***-D*** gibt dabei an, dass der Dienst im ***Daemon***-Mode gestartet wird, also als Dienst, welcher per HTTP angesprochen werden kann.
Bei erfolgreicher Ausführung, sollte eine Meldung erscheinen, dass das Programm im ***Daemon***-mode gestartet wurde.
![](/images/apps/xrechnung-validator/xrechnung-daemon-started.png)

{{< notice info >}}
Je nach Version des Validators und der XRechnung-Konfigurationen, können die Ausgaben an dieser Stelle varieren.
{{< /notice >}}

<br>

Sollte das Programm erfolgreich gestartet werden, wird empfohlen die Funktionalität als Windows-Dienst einzurichten.

## Einrichten des Dienstes in der Connector NAV/BC Einrichtung

Navigieren Sie nun zur [***Connector NAV/BC Einrichtung***](de-de/connectornav/configuration-and-setup/setup/setup_connectornav/).
Unter den Einstellen ***Pro Mandant***, navigieren Sie zu der ***PEPPOL/XRechnung Einrichtung***.
Tragen Sie die Url inklusive des genutzten Ports in das Feld ***XRechnung Prüfung URL*** ein:

|![](images/apps/xrechnung-validator/xrechnung-url-setup.png)|
|-|

{{< notice info Wichtig >}}
Das Feld ***XRechnung prüfen*** muss angehakt sein, wenn eine Validierung der XRechnungen stattfinden soll.
{{</ notice >}}