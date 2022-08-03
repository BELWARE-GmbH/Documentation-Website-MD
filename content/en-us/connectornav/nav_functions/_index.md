---
title: "Functions setup"
date: 2020-02-28T10:08:56+09:00
description: 
draft: true
collapsible: true
weight: 1
---

# The Connector NAV/BC
The documentation for setting up the functions via the object designer

## version 160 for Microsoft Dynamics NAV/BC

## Documentation status 2022/08/01

### Content
Page Actions integration
Copyright 


### Page Actions integration
The functions are set up via the object designer. There, the corresponding page actions must be copied and pasted from the Connector object for each page.

The starting point is the page overview of the object designer.


Here you can search for the corresponding Connector NAV objects. The ID of the corresponding objects can be found in the attached table.

In our example we take the object ***CON Sales Quote Selection***. We select it and then click Design at the bottom.


This will open the following page:


Here you select Page Actions from the menu option View. This takes you to the
following page:


All page actions offered by the Connector are listed here. They ensure that buttons are added to the the pages, that make the function of the connector usable.

You have to select the appropriate actions according to the modules you have purchased. You can see which actions belong to your modules in the attached table.

For our example, we assume that we have purchased all modules. Accordingly, we select all listed actions and copy them.

Now we go back to the Page List and look for the corresponding object, in this case ***Sales Quote*** and paste the copied Page Actions under Page Actions.

After inserting the Page Actions into the single page of ***Sales Quote***, we have to do the same for the Sales Quote List.

After that, the integration would already be complete for the Sales Quote pages.

Repeat this procedure for all objects specified in the list. Both in the single page and the list.

Table 1 List of objects in which the Connector is integrated by default.



### Copyright
© 2003-2022 BELWARE GmbH. All rights reserved. This documentation as well as the software described in it are subject to licensing regulations and may only be used or copied in accordance with this license agreement.

The information and data in this documentation are for information purposes only and are applied with reservation. BELWARE GmbH accepts no liability or warranty for them. BELWARE GmbH assumes no responsibility for consequential damages resulting from errors or inaccuracies that may occur in this documentation.

No part of this publication may be reproduced, stored in a retrieval system, or transmitted in any form or by any means, electronic, mechanical, tape, or otherwise, without the express written permission of BELWARE GmbH.

All product and company names mentioned as well as registered trademarks are the property of the respective manufacturers and are protected as such.

We will be happy to answer any further questions or suggestions for improvement.
BELWARE GmbH