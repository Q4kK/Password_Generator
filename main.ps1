$Alphabet_Lowercase = ("a","b","c","d","e","f","g","h","i","j","k","m","n","o","p","q","r","s","t","u","v","w","x","y","z")
$Alphabet_Uppercase = ("A","B","C","D","E","F","G","H","J","K","L","M","N","P","Q","R","S","T","U","V","W","X","Y","Z")
$Numeric_Values = (0..9)
$Special_Characters = ("!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "~", "/", "-", "|", "\")

    $Full_Alphabet += $Alphabet_Uppercase
    $Full_Alphabet +=$Alphabet_Lowercase
    $Full_Alphabet += $Numeric_Values

$Pass_Array = @()
$PW_NUM = Read-Host "Enter the amount of passwords you want to generate"

if ((Read-Host "Do you want special characters? [Y][N]") -eq "Y") {
    $Full_Alphabet += $Special_Characters
}

for ($c=0; $c -lt $PW_NUM; $c++) {
    for ($i=0; $i -le 10; $i++) {
        $Random = Get-Random -Maximum ($Full_Alphabet.Count)
        $Generated_Password += $Full_Alphabet[$Random]
    }
    $Pass_Array += $Generated_Password
    $Generated_Password = ""
}
Write-Output $Pass_Array