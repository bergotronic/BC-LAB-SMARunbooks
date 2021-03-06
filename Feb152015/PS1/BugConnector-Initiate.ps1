workflow BugConnector-Initiate
{
    #Bugzilla Connector Global Variables
    $BugZilla_DatabaseServer = "UBUNUTU_SRV1"
    $BugZilla_DatabaseName = "bugs"
    $BugZilla_SCSMDatabaseServer = "BC-SCSM"
    $BugZilla_SCSMDatabseName = "ServiceManager"
        
    Write-Output "Variables Set!"
    
    
    
    Write-Output "Starting Processing Runbook!"
    #Call Process Runbook
    BugConnector-Process -SCSMServer $BugZilla_SCSMDatabaseServer
    
    Write-Output "Completed Processing Runbook!"
    
}
