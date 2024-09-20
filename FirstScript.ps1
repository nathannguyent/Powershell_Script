write-host "My name is Nathan"
write-host "My first scripts in Powershell"
$a = 5
$b = 6
$c = $a + $b
$d = $a - $b
Write-host $c
Write-host $d

get childItem -path c: \force 

get-childItem -path $env:ProgramFiles -Recurse -Include *.exe |
    Where-Object -FilterScript {
    ($_.LastWriteTime -gt '2020-01-01') -and ($_.Length -ge 100mb) -and ($_.Length -le 200mb)
}