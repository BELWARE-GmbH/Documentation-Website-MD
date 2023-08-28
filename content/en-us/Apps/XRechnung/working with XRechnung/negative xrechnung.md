---
title: "Validation report"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
# Validation report

Optionally, the validation of XRechnung files can be activated via the [**Connector 365 Setup**](/en-us/apps/xrechnung/first-steps/setup/base-setup/). Thereby an XRechnung is checked for correct syntax and conformity to the formal specifications for XRechnung.
The tool which is used here is the official **KoSIT Validator**.
Such a check, as described above, usually also takes place at the recipient.
The advantage of activating the validation is that you can easily perform an equivalent validation after the XRechnung generation.
Thus, you can detect incorrect entries at an early stage and not only when the recipient comes to the same conclusions by means of verification and rejects the invoice.

## Rejected XRechnung

If the validation of XRechnung is active, and during [sending](/en-us/apps/xrechnung/working-with-xrechnung/sending/) a generated XRechnung is considered as not conforming to the formal specifications for XRechnung, an error message occurs. As soon as you confirm this, the corresponding validation report opens:

|![](images/XRechnung/xrechnungbericht.png)|
|-|

The audit report shows in detail which fields and constellations contradict the specifications for XRechnung.

The most common sources of errors can be solved by setup. We have logged these [here](en-us/apps/xrechnung/first-steps/setup/).

