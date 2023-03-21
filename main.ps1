$Alphabet_Lowercase = ("a","b","c","d","e","f","g","h","i","j","k","m","n","o","p","q","r","s","t","u","v","w","x","y","z")
$Alphabet_Uppercase = ("A","B","C","D","E","F","G","H","J","K","L","M","N","P","Q","R","S","T","U","V","W","X","Y","Z")
$Numeric_Values = (0..9)
$Special_Characters = ("!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "~", "/", "-", "|", "\")

    $Full_Alphabet += $Alphabet_Uppercase
    $Full_Alphabet +=$Alphabet_Lowercase
    $Full_Alphabet += $Numeric_Values
    
    if ((Read-Host "Do you want special characters? [Y][N]") -eq "Y") {
        $Full_Alphabet += $Special_Characters
    }
    else {
    }

for ($i=0; $i -le 10; $i++) {
    $Random = Get-Random -Maximum ($Full_Alphabet.Count)
    $Generated_Password += $Full_Alphabet[$Random]
}

    Write-Output $Generated_Password