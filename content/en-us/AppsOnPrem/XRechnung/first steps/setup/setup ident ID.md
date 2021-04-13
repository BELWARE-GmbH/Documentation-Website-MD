---
title: "Ident ID"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Setup

### Ident ID

The Ident ID must be indicated on every electronic invoice sent to public-sector customers of the federal administration.

The Ident ID is intended to enable addressing and, if necessary, forwarding of the received electronic invoice to the downstream invoice processing systems of the connected administrative units. In order to optimize acceptance and manageability both for public-sector customers and for their service providers and their service providers, the federal and state governments have agreed on a uniform system as part of the operation of the XRechnung standard.

The Ident ID is basically made up of three components::

- Rough addressing,
- Fine addressing and
- Checksum.

The so-called rough addressing is used to distinguish whether the invoice recipient belongs to the federal administration or to a federal state:

- 991: The invoice recipient is part of the direct federal administration or a constitutional body and receives electronic invoices via the ZRE.
- 992:
  a) The invoice recipient is part of the indirect federal administration and receives electronic invoices via the OZG-RE.
  b) The invoice recipient is a federal state that receives electronic invoices via the OZG-RE.
- 993: The invoice recipient is part of the indirect federal administration and receives electronic invoices via its own solution (neither ZRE nor OZG-RE).

Example structure of an Ident ID: 123-456-76

An invoice recipient of the federal administration has at least one Ident ID.

The design of the Ident ID in an authority is based on the organization of internal invoice processing. Authorities with several routing IDs ensure that the invoice is addressed directly to the area responsible for management by specifying the corresponding routing IDs. It is therefore essential that the Ident ID specified in the order is always used for invoicing.

The Ident IDs are assigned decentrally by the federal and state governments. Therefore, there is currently no nationwide database in which all Ident IDs are entered.

**You will receive the Ident ID exclusively from the respective invoice recipient.**