workflow Invoke-SMARunbookExport
{
    # Update to your preferred output directory
    #$ExportDirectory = "D:\SMARunbookExport\{0}" -f (Get-Date -Format "MMMddyyyy")
    
     $ExportDirectory = "C:\Users\bergda\Documents\GitHub\BC-LAB-SMARunbooks" -f (Get-Date -Format "MMMddyyyy")
    $WebServiceEndpoint = "https://BC-SMA"

    # Example below with logic on Runbook Name
    #$RunbooksToProcess = Get-SmaRunbook -WebServiceEndpoint "https://localhost" | Where-Object -Match -Property RunbookName -Value "Export-SMARunbookToXML" 
    
    # Below gets all runbooks and exports them to the above directory (use where clause for granularity) 
    $RunbooksToProcess = Get-SmaRunbook -WebServiceEndpoint $WebServiceEndpoint
    foreach($RB in $RunbooksToProcess)
    {
        Export-SMARunbooktoXML -RunbookName $Rb.RunbookName -ExportDirectory $ExportDirectory `
        -WebServiceEndpoint $WebServiceEndpoint -EnableScriptOutput $True `
        -ExportPS1 $True -ExportVars $False -ExportCreds $False -ExportSchedules $False `
        -ExportAssets $True -ExportSecrets $True
    }
}


