---
title: "Routing ID"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 4
---

##### Routing ID

As mentioned earlier, the routing ID is used to uniquely identify invoice recipients to enable addressing and, if necessary, routing of electronic invoices to the correct administrative units. Basically, a routing ID consists of the following components:

- Coarse addressing

- Fine addressing (optional)

- Check digit

Further information on the structure of a routing ID can be found [here](https://www.e-rechnung-bund.de/faq-e-rechnung/faq-leitweg-id/).

The Connector is able to check the syntax of a route ID for correctness.   
That is, it checks if the individual components contain the allowed number of characters, and if the check digit is correct. **IMPORTANT**: It is **not** checked whether the routing ID is actually assigned. For example, the connector would accept the routing ID: 123-456-76 because both coarse and fine addressing have the allowed number of characters, and the check digit is correct, but there is no guarantee that this routing ID actually exists.

Frequently, public clients post their routing ID on their Internet sites.  
In addition, some states provide a directory of known routing IDs where you can cross-check IDs.