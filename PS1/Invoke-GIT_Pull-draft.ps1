workflow Invoke-GIT_Pull
{
    Inlinescript{
    . (Resolve-Path "$env:LOCALAPPDATA\GitHub\shell.ps1")
 
    git-pull
    }
}
