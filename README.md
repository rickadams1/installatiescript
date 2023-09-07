
# Installatiescript
Powershell softwarescript om software (her)installatie te automatiseren en/of waar mogelijk te optimaliseren. 
Dit script kan worden gebruikt om software automatisch te installeren. 

Instructies:
 **wijzig de Set-ExecutionPolicy settings via Powershell, ' admin' voordat het script wordt uitgevoerd :**  

    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
download deze repo, extract het [install.ps1](https://github.com/rickadams1/installatiescript/blob/main/install.ps1) file. 
Open  PowerShell als Admin
Voer het  install.ps1 script uit door de volgende opdracht in te voeren:

    .\install.ps1

Demo:

![enter image description here:](https://www.eurovps.com/blog/wp-content/uploads/2012/10/placeholder-images.jpg) 


**Gebruik**:
Sla de vereiste software op in de software older bij voorkeur op OneDrive.
Draai het script.  

**Toegevoegde waarde:**
Bespaar tijd door software automatisch te installeren en deelprocessen te optimaliseren.

**Opmerkingen**:
Het script vereist de Microsoft.VisualBasic.PowerPacks-module.
Je moet de *Set-ExecutionPolicy-instelling* in PowerShell wijzigen *voordat* je het script uitvoert.
