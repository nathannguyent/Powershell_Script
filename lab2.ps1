
Import-Module activedirectory

$ADOU = Import-csv C:\Users\Administrator\Documents\Lab2.csv

foreach ($ou in $ADou)
{

$name = $ou.name
$path = $ou.path
$protection = [System.Convert]::ToBoolean($ou.protection)

New-ADOrganizationalUnit `
-Name $name `
-path $path `
-protectedFromAccidentalDeletion $protection `
}