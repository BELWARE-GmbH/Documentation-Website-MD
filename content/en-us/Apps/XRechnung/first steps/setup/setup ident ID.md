---
title: "Buyer Reference / Leitweg-Id"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Buyer reference

The buyer reference represents an identifier that uniquely identifies a customer.
The XRechnung standard uses the concept of the **Leitweg-Id** for addressing public sector customers.
You can read more about the **Leitweg-Id** below.

In principle, however, the XRechnung standard can also be used in the non-public sector.
Here, usually no **Leitweg-Ids** are used, but own identifiers.

### Leitweg-Id

The Leitweg-Id must be indicated on every electronic invoice sent to public-sector customers of the federal administration.

The Leitweg-Id is intended to enable addressing and, if necessary, forwarding of the received electronic invoice to the downstream invoice processing systems of the connected administrative units. In order to optimize acceptance and manageability both for public-sector customers and for their service providers and their service providers, the federal and state governments have agreed on a uniform system as part of the operation of the XRechnung standard.

The Leitweg-Id is basically made up of three components::

- Rough addressing,
- Fine addressing and
- Checksum.

The so-called rough addressing is used to distinguish whether the invoice recipient belongs to the federal administration or to a federal state:

- 991: The invoice recipient is part of the direct federal administration or a constitutional body and receives electronic invoices via the ZRE.
- 992:
  a) The invoice recipient is part of the indirect federal administration and receives electronic invoices via the OZG-RE.
  b) The invoice recipient is a federal state that receives electronic invoices via the OZG-RE.
- 993: The invoice recipient is part of the indirect federal administration and receives electronic invoices via its own solution (neither ZRE nor OZG-RE).

Example structure of an Leitweg-Id: 123-456-76

An invoice recipient of the federal administration has at least one Leitweg-Id.

The design of the Leitweg-Id in an authority is based on the organization of internal invoice processing. Authorities with several routing IDs ensure that the invoice is addressed directly to the area responsible for management by specifying the corresponding routing IDs. It is therefore essential that the Leitweg-Id specified in the order is always used for invoicing.

The Leitweg-Ids are assigned decentrally by the federal and state governments. Therefore, there is currently no nationwide database in which all Leitweg-Ids are entered.

**You will receive the Leitweg-Id exclusively from the respective invoice recipient.**