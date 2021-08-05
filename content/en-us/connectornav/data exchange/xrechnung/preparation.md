---
title: "Preparation"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---

##### Preparation

Make sure you have one of the following Dynamics 365 Business Central versions installed:

NAV 2016 as of CU55 (05/20)  
NAV 2017 as of CU41 (04/20)  
NAV 2018 as of CU28 (04/20)  
Business Central 13 as of CU18 (04/20)  
Business Central 14 as of CU11 (04/20)

The **XRechnung** module generates invoices and credit notes in **XRechnung** format and checks whether the generated **XRechnung** files are compliant with the formal specifications. This check is done by default using a **validation tool** which is located on an external server. This means that requests must be sent over the Internet to this corresponding server.  
The server "listens" to requests via port 5090. **If** you want to use our validator, you have to make sure that outgoing requests are allowed to be sent via port 5090. You can make a corresponding setting in the "Firewall settings.   
Alternatively, it is possible to perform the validation through your own set up validation server.