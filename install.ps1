# Dit script installeert alle exe-bestanden in een map automatisch.
#
# Auteur: Rick Adams
# Datum: 2023-09-07

# https://ninite.com/7zip-firefox-sumatrapdf-vscode-vlc/

# wijzig de Set-ExecutionPolicy settings via Powershell, ' admin':  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

# Importeer de vereiste modules
Install-Module Microsoft.VisualBasic.PowerPacks

# Definieer variabelen
$scriptPath = $MyInvocation.MyCommand.Path
$targetPath = Split-Path $scriptPath -Parent

# Initialiseer de variabele $exeFiles
$exeFiles = Get-ChildItem -Path $targetPath -Filter *.exe

# Installeer elk exe-bestand
foreach ($exeFile in $exeFiles) {
    # Start een nieuw installatieproces
    $process = Start-Process $exeFile

    # Controleer of de installatie is geslaagd
    if ($process.ExitCode -ne 0) {
        # Toon een foutbericht
        Write-Error "De installatie van '{0}' is mislukt met code {1}" -f $exeFile, $process.ExitCode
    }
}

# Controleer of alle processen zijn voltooid
foreach ($process in $exeFiles) {
    # Wacht tot het proces is voltooid
    $process.WaitForExit()
}
