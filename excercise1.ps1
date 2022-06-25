$MyOption = 5

do{


    Write-Output "MENU"
    Write-Output "1) Mostrar dos primeras letras"
    Write-Output "2) Mostrar tres primeras letras"
    Write-Output "3) Mostrar dos ultimas letras"
    Write-Output "4) Mostrar ultima letra"
    Write-Output "5) Escribir otra Cadena"
    Write-Output "6) Salir del programa"
    
  
    
    Switch ($MyOption)
    {
        1 { #"1) Mostrar dos primeras letras"
            if($MyString.Length-lt2)
            {
                Write-Output "La cadena tiene menos de dos letras"
            }
            else
            {
                Write-Output $MySubString = $MyString.Substring(0,2)
            }
            $MyOption = Read-Host
        }
    
        2 { #"2) Mostrar tres primeras letras"
            if($MyString.Length-lt3)
            {
                Write-Output "La cadena tiene menos de tres letras"
            }
            else
            {
                Write-Output $MySubString = $MyString.Substring(0,3)
            }
            $MyOption = Read-Host
        }
    
        3 { #"3) Mostrar dos ultimas letras"
            if($MyString.Length-lt2)
            {
                Write-Output "La cadena tiene menos de dos letras"
            }
            else
            {
                Write-Output $MySubString = $MyString.Substring($MyString.Length-3,3)
            }
            $MyOption = Read-Host
        }
    
        4 { #"4) Mostrar ultima letra"
            if($MyString.Length-lt1)
            {
                Write-Output "La cadena tiene menos de una letra"
            }
            else
            {
                Write-Output $MySubString = $MyString.Substring($MyString.Length-1,1)
            }
        
            $MyOption = Read-Host
        }

        5 { #"5) Escribir otra Cadena"
            Write-Output "Escriba una cadena y presione Enter"
            $MyString = Read-Host
            $MyOption = 7
        }

        6 { #"6) Salir del programa"
            Write-Output "Presione Enter para salir"
            $MyString = Read-Host

        }

        default { 
            Write-Output "Elija una opcion del 1 al 6"
            $MyOption = Read-Host

        }

    }
    
    
 
    
}while ($MyOption -ne "6")
