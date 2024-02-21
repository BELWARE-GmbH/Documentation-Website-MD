---
title: "Besonderheiten bei Nutzung von Connector 365 XRechnung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 4
---

### Besonderheiten bei Nutzung von Connector 365 XRechnung

Wenn Sie die **Connector 365 XRechnung** App installiert haben, steht Ihnen bei Hinzufügen von Anhängen ein weiteres
Feld zur Verfügung, welches direkten Einfluss auf die Funktionsweise der **Connector 365 XRechnung** App nimmt.
Letztere ist nämlich kompatibel mit der **Connector 365 Mail Attachments Plus** App. Das heißt, dass eingerichtete Anhänge für Debitoren, Berichte oder Belege ebenfalls beim XRechnung-Versand mithilfe der **Connector 365 XRechnung** App berücksichtigt werden. Besonders beim XRechnung-Versand ist, dass Anhänge entweder klassisch als zusätzlicher Anhang per Mail mitversendet werden können, oder aber direkt in eine XRechnung-XML-Datei eingebettet werden (mehr dazu [hier](de-de/apps/xrechnung)).
Im Folgenden wird erläutert, wie die besondere Behandlung von Anhängen für XRechnung innerhalb von **Connector 365 Mail Attachments Plus** pro Anhang eingerichtet werden kann.

#### Einrichten eines Anhangs

Gehen Sie sicher, dass die [**Connector 365 XRechnung**](de-de/apps/xrechnung) App installiert ist.
Befolgen Sie die Schritte für das Einrichten von Standard-Anhängen für  [Debitoren](de-de/apps/mail-attachments-plus/first-steps/setup/defaults-customer), [Belege](de-de/apps/mail-attachments-plus/first-steps/setup/defaults-document) oder [Berichte](de-de/apps/mail-attachments-plus/first-steps/setup/defaults-report).
Beim Öffnen der Anhangsliste, in der Sie neue Anhänge hinzufügen können, sollte ein Feld **Nicht in XRechnung xml einbetten** sichtbar sein:

|![](images/apps/mail-attachments-plus/de/xr_do_not_embed.png)|
|-|

Fügen Sie nun einen beliebigen Anhang hinzu. Standardmäßig, ist das Feld **Nicht in xml XRechnung xml einbetten** nicht angehakt, das heißt für XRechnung werden Anhänge standardmäßig eingebettet.
Wenn Sie jedoch einrichten möchten, dass der neu eingerichtete Anhang für XRechnungen lediglich als zusätzlichler Anhang verschickt wird, setzen Sie ein Häkchen in das Feld.

|![](images/apps/mail-attachments-plus/de/xr_set_do_not_embed.png)|
|-|

Weiter Informationen zum Thema Anhänge bei XRechnung erhalten Sie [hier](de-de/apps/xrechnung/working-with-xrechnung/attachments/).