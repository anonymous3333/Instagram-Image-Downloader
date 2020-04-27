param (
	[parameter(Mandatory = $true)][string]$url,
	[parameter(Mandatory = $true)][string]$nA,
	#Por defecto la ruta de guardado es el directorio local
	[string]$ruta = (Convert-Path .)
)
if ($url.EndsWith('/') ){
	$url = $url.Remove($url.Length-1)
}
$url = $url + '/media/?size=l'
$destino =  $ruta + "\$nA" + '.jpg'
$cliente = New-Object System.Net.WebClient
Write-Host "Descargando desde $url ..."
try {
	$cliente.DownloadFile($url,$destino)
}
catch [System.Net.WebException ]{
	Write-Host 'La direccion ingresada no es valida'
	exit
}catch [System.ArgumentException]{
	Write-Host 'Compruebe los argumentos introducidos'
	exit
}
Write-Host "El archivo se ha descargado con exito en $destino"