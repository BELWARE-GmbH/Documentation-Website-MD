---
title: "Connector 365 Role Center"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Inserting the Connector 365 Role Centre into existing Role Centers

If you would like to integrate the Connector 365 role centre into existing role centres, use the following template for a corresponding page extension:

```AL
pageextension [ID] "[Name of the page extension]" extends "[Page to be extended to include role center]"
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
This inserts the Connector 365 role center into the layout of the existing page with role center after "User Tasks Activities".