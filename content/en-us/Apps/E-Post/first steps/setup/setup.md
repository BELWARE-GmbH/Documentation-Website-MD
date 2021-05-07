---
title: "Setup"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Erste Schritte

### Einrichtung
By searching **"Connector 365 Setup "** you can find the setup for the E-POST API, here you set all the necessary information to ensure that the APP works without problems.

![](images/apps/epostsetup.PNG)

{{< notice info "Note" >}}
 _While the test mode is activated, no invoices are sent. Instead, the previously specified test mail will receive a notification_
{{< /notice >}}
#
#### Set a Passwort
To set a password for the APP, you should first make sure that the setup is completely filled in (except for the secret/password). After that you have to click on **"Set password"** in the setup. A new dialog will now open and at the same time the admin that was specified during the E-Post registration will receive an SMS with a PIN.

Enter the PIN in the corresponding field and confirm the dialog with OK. The password is now set and a secret is automatically generated.

| Feld                         | Beschreibung                                                                                       |
|------------------------------|----------------------------------------------------------------------------------------------------|
| API EKP                      | This is your customer number that you have received from Deutsche Post                             |
| API Secret                   | The secret is created automatically after you set your password                                    |
| API Password                 | Here is your encrypted password                                                                    |
| Save File in Joblist         | Determines whether sent files are archived in the job list                                         |
| Testmode                     | If this option is enabled, the data of the letters will not be sent to the printing center         |
| Testmail                     | If the test mode is enabled, this email address will receive a notification about the shipment     |
| Show restricted area         | Displays the restricted areas required by Deutsche Post on test letters                            |



