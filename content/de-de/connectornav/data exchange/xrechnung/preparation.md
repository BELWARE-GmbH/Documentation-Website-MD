---
title: "Vorbereitung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---

##### Vorbereitung

Gehen Sie sicher, dass Sie eine der folgenden Dynamics 365 Business Central Versionen installiert haben:

NAV 2016 ab CU55 (05/20)  
NAV 2017 ab CU41 (04/20)  
NAV 2018 ab CU28 (04/20)  
Business Central 13 ab CU18 (04/20)  
Business Central 14 ab CU11 (04/20)

Das Modul **XRechnung** erzeugt Rechnungen und Gutschriften im **XRechnung**-Format und prüft, ob die erzeugten **XRechnung**-Dateien konform zu den formalen Vorgaben sind. Diese Überprüfung geschieht standardmäßig mittels eines **Validierungstools** welches sich auf einem externen Server befindet. Das bedeutet, dass Anfragen über das Internet an diesem entsprechenden Server gesendet werden müssen.  
Der Server „hört“ Anfragen über den Port 5090 ab. **Falls** Sie also unseren Validator nutzen möchten, muss sichergestellt werden, dass ausgehende Anfragen über den Port 5090 gesendet werden dürfen. Eine entsprechende Einstellung können Sie in den „Firewall-Einstellungen vornehmen.   
Alternativ ist es möglich, die Validierung durch einen eigenen aufgesetzten Validierungsserver durchzuführen.