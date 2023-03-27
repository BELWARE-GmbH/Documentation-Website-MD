---
title: "Stufe 2"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Level 2

![](images/connectornav/easysupraWeb/Abb7.png)

**Figure 7: Setup wizard - level 2**.

The colored red numbers correspond to the selected weighting of the respective criteria category (cf. Figure 7). Clicking on the AssistEdit will take you to the setup of the desired criteria. The following Figure 8 shows an example of the setup of the "hard" factors.


![](images/connectornav/easysupraWeb/Abb8.png)

**Figure 8: Criteria selection using the "hard" criteria as an example**.

Define all relevant criteria in this mask. For this purpose enter a criteria code, 
a description and the reference fields as evaluation basis. Optionally you can 
specify additional filters for the article category, the product group, an article and a variant. This allows you a differentiated evaluation of certain products or product groups. This also allows you, for example, to weight and evaluate the complaint rate of two different product groups differently.
To set up the respective criteria, entries are made for the fields "Reference field 1", 
"Reference field 2" and the respective option on the reference field are required. On the first level 
the fields are selected, which are to be compared with each other. The following example shows the possibilities available at this level. 
are given on this level. For the "hard" criterion delivery reliability (see figure 8) fields of the reference table purchase delivery line (posted goods receipts) are used.

![](images/connectornav/easysupraWeb/Abb9.png)

**Figure 9: Hard criteria setup**.

By selecting the reference field, all available fields of the selected reference table are displayed. In terms of the supplier's delivery date adherence, the "committed goods receipt date" and the "posting date" are compared. 
To view more details about the definition of the criterion, open via 
button "Criterion setup" to open the detail view and define a calculation/ comparison basis.
basis for comparison. Here exemplarily on the basis of the delivery reliability:

![](images/connectornav/easysupraWeb/Abb10.png)

**Figure 10: Detail setup of the hard criteria**.

The percentage signs in the "Formula" column are set in the evaluation by the selected 
reference fields (cf. Figure 9) for the criterion. The "Reference field 1" corresponds to 
thus %1 and the "Reference field 2" %2. In the lower part of the map you can also see this assignment. In the column "Type" you define which unit is to be used for the range 
(here: "Days", also possible "Quantities" and "Percent"). The entries in the "From" and "To" columns define the validity of the criteria range. Finally, a 
score must be specified for the defined range.

Please note the following when defining formulas:
- "Reference field 1" represents the ACTUAL value, whereas "Reference field 2" represents the 
    TARGET value, which is the basis of the comparison.
- Furthermore, please note that when using formulas for percentage comparisons, commas (",") must be used. 
    comparison, commas (",") must be replaced by periods (".").
- Please do not use pipe characters ("|") within the formulas.

For the example of delivery reliability, the "Criteria Detail Code" "FRUEH" has been defined (cf. 
Figure 10). Here, the fields "Committed goods receipt date" and "Posting date" from the table "Purchase delivery line" are compared. If the date of the "Committed goods receipt date" field is before the date of the "Posting date" field, the criterion applies and the delivery is awarded 100 points. According to the example process
the values are checked (e.g. 13.03.2017 > 12.03.2017).
After you have made all the desired settings, exit the mask 
by clicking on the "OK" button. To activate a completely defined criterion, activate the respective criterion via the "Allocate" check mark (cf. Figure 9) for 
the current supplier rating.
Next, set up the soft criteria. 

![](images/connectornav/easysupraWeb/Abb11.png)

**Figure 11: Setup wizard - level 2**.

Clicking on the weighting number of the "soft" factors takes you to the setup of these

![](images/connectornav/easysupraWeb/Abb12.png)

**Figure 12: Definition of the soft criteria**.

The "Criterion Setup" button (cf. Figure 12) takes you to the profile survey for the selected criterion. Here the functionalities of the Business Central
Standard contact profile survey are used (cf. Figure 13). At this point you define 
your questions and the answers. For each criterion you define only 1 question including the 
corresponding answers. So in the current example, the question "Are order confirmations sent?" with the answers "Yes" and "No" belongs to the soft criterion "Order confirmation" (cf. Figure 13). If you would like to assign a score, this can be 
under the "To value" field at the answer. When calculating the total score, the sum of the answer points is always divided by the number of answers given, regardless of the setup type "multiple answers possible" - Yes/No. Exit the mask by clicking the "OK" button

![](images/connectornav/easysupraWeb/Abb13.png)

**Figure 13: Set up soft criteria via the standard profile survey**.

note: You can also use the creditor card to perform the profile survey. The answer will be stored at the contact for the vendor. If no contact exists for the vendor yet, it will be created automatically. Please note that for this purpose in the "Sales and 
Marketing setup" a number series for contacts must be stored.
Once all the desired criteria have been defined, you will be taken back to the Level 2 setup wizard (cf. Figure 11).

**Tip:** All defined criteria ("hard" and "soft") are now available for each new or existing supplier rating. The creation and setup is therefore unique and 
each supplier rating can use the pool of criteria from now on.

After setting up all criteria, press the "Next" button in the wizard.
