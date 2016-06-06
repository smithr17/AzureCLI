﻿Login-AzureRmAccount
Get-AzureRmSubscription -SubscriptionId "36da8c44-d1a8-4e47-9515-7ce3097645fc"
Get-AzureRmSubscription -SubscriptionId "36da8c44-d1a8-4e47-9515-7ce3097645fc" | Select-AzureRmSubscription

$filespec="C:\Users\KBergman\Source\Repos\AzureCLI\1-SingleVM\Templates"

$rg  = "play1"
$loc = "CentralUS"

New-AzureRmResourceGroup -Location $loc -Name $rg

New-AzureRmResourceGroupDeployment -ResourceGroupName $rg -TemplateFile "$filespec\azuredeploy.json" -TemplateParameterFile "$filespec\azuredeploy.parameters.json"                                               