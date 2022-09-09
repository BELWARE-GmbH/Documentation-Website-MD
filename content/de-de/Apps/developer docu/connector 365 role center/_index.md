---
title: "Connector 365 Rollencenter"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: true
weight: 2
---
### Einfügen des Connector 365 Rollencenters in bestehende Rollencenter

Möchten Sie das Rollencenter des Connector 365 in bereits vorhandene Rollencenter integrieren, nutzen Sie folgende Vorlage für eine entsprechende Seitenerweiterung:

```AL
pageextension [ID] "[Name der Seitenerweiterung]" extends "[Name der vorhandenen Seite mit Rollencenter]"
{
    layout
    {
        addafter("User Tasks Activities")
        {
            part("BEL365 Connector 365"; "BEL365 Connector 365 Cue Page")
            {
                Caption = 'Connector 365';
                ApplicationArea = All;
            }
        }
    }
}
```
Damit wird in das Layout der bestehenden Seite mit Rollencenter nach den "User Tasks Activities" das Rollencenter des Connector 365 eingefügt.