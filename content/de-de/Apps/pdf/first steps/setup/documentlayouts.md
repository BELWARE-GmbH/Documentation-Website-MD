---
title: "PDF im Dokumentenlayout"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 4
---
### Einrichtung

Die in den Dokumentenlayouts oder Beleglayouts hinterlegte Briefpapier-Konfiguration wird gegenüber der PDF-Einrichtung in der Berichtsauswahl als auch in der Connector 365 Einrichtung priorisiert.

### Briefpapier im Dokumentenlayout

Sie haben neben der Möglichkeit ein Briefpapier für alle Berichte, sowie per Bericht auch die Möglichkeit ein berichtspezifisches Briefpapier pro Debitor zu hinterlegen. Die Einrichtung hierfür wird in den jeweiligen Dokumentenlayouts vorgenommen.

Öffnen Sie die Karte des Debitors, bei dem Sie ein abweichendes Briefpapier hinterlegen wollen. 

|![](images/apps/pdf_SaaS/documentlayouts_DEU.png)|
|-|

Der oben markierte Bereich zeigt die PDF-Einrichtung, in der Sie bei diesem Debitor in den Dokumentenlayouts Ihr Briefpapier definieren können. Im Folgenden gehen wir auf die einzelnen Konfigurationsmöglichkeiten ein.

##### Konformitätsstufe
Hier können Sie, wenn gewünscht eine Konformitätsstufe definieren.

##### Briefpapierkonfiguration
Wählen Sie hier eine bestehende Briefpapierkonfiguration aus. Der oben gezeigte Screenshot, zeigt für den Bericht **1306 Rechnung**, dass die Briefpapierkonfiguration **RECHNUNG** hinterlegt wurde. Es ist ebenfalls möglich eine neue Briefpapierkonfiguration zu erstellen.

Für eine neue Briefpapierkonfiguration klicken Sie auf **+Neu** und führen die folgenden Schritte aus:
1. Definieren Sie einen Code.
2. Optional können Sie eine Beschreibung hinzufügen, die weitere Informationen zum Code enthält.
3. Unter Briefpapier-Vorlage wird festgelegt, welcher Briefpapiercode für welche Briefpapierart verwendet werden soll.
</p>

Weitere Informationen, sowie Beispiele für Briefpapierkonfigurationen, finden Sie **hier**.

##### Briefpapier
Wenn Sie eine Briefpapierkonfiguration hinterlegt haben, können Sie diese einsehen, indem Sie auf das Feld **Briefpapier** klicken. Da für den Bericht **1306 Rechnung** eine Briefpapierkonfiguration mit 3 Briefpapierarten hinterlegt wurde, zeigt das Feld für diesen Bericht eine **3** an. 
Für das Briefpapier **RECHNUNG** sehen Sie hier die folgende Konfiguration als Auszug:

|![](images/apps/pdf_SaaS/example_field_stationery_DEU.png)|
|-|

##### Anhangskonfiguration
Hier wählen Sie eine bestehende Anhangskonfiguration aus. In diesem Beispiel wurde für den Bericht **1306 Rechnung** als Anhangskonfiguration **ANHANGSKONFIGURATION** hinterlegt.
Auch hier können Sie eine neue Anhangskonfiguration erstellen, wenn gewünscht.

Für eine neue Anhangskonfiguration führen Sie die folgenden Schritte aus:
1. Definieren Sie einen Code.
2. Optional können Sie eine Beschreibung hinzufügen, die die Anhangskonfiguration weiter beschreibt.
3. Wählen Sie ob der entsprechende Anhang **vor** oder **nach** dem Hauptdokument hinzugefügt werden soll.
4. Positionieren Sie Ihre Anhänge in der gewünschten Reihenfolge.
5. Fügen Sie eine Drehung hinzu, wenn erforderlich oder gewünscht.
</p>

Weiteres zur Anhangskonfiguration, sowie Beispiel finden Sie **hier**.

##### Anhänge
Wenn Sie eine Anhangskonfiguration hinterlegt haben, dann können Sie hier die Anzahl der hinterlegten Anhänge sehen. Für den Bericht **1306 Rechnung** wurde **ANHANGSKONFIGURATION** hinterlegt, welche insgesamt **3** Anhänge beinhaltet. 
Mit einem Klick auf die Zahl im Feld Anhänge, sehen Sie die Anhangskonfiguration.
Dies könnte, wie folgt aussehen:

|![](images/apps/pdf_SaaS/example_field_attachments_DEU.png)|
|-|

### Briefpapier im Beleglayout
Auch für Ihre Kreditoren können Sie pro Bericht ein Briefpapier hinterlegen. Die Einrichtung hierfür wird in den Beleglayouts vorgenommen.
Öffnen Sie die Karte des Debitors, bei dem Sie ein abweichendes Briefpapier hinterlegen wollen.

|![](images/apps/pdf_SaaS/beleglayouts_DEU.png)|
|-|

Der oben markierte Bereich zeigt die PDF-Einrichtung, bei der Sie das Briefpapier hinterlegen. Diese ist identisch mit der Einrichtung in den Dokumentenlayouts beim Debitor.