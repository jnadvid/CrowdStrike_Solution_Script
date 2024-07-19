
$safeMode = (Get-WmiObject Win32_ComputerSystem).BootupState -eq "Normal boot"
if (-not $safeMode) {
    Write-Host "Por favor, asegúrese de estar en Modo Seguro o WRE antes de continuar."
    exit
}



Set-Location -Path "C:\Windows\System32\drivers\CrowdStrike"


$fileToDelete = Get-ChildItem -Filter "C-00000291*.sys" -ErrorAction SilentlyContinue

if ($fileToDelete) {
    try {
        Remove-Item $fileToDelete.FullName -Force
        Write-Host "El archivo $($fileToDelete.Name) ha sido eliminado exitosamente."
    }
    catch {
        Write-Host "Error al eliminar el archivo: $_"
    }
} else {
    Write-Host "No se encontró ningún archivo que coincida con el patrón 'C-00000291*.sys'."
}


#By Israel Nadal // @perito_inf