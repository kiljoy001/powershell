while ($true)
{
    sleep -s 20
    if((Get-Process -Name python -ErrorAction SilentlyContinue) -eq $null)
    {
          if((Get-Process -Name chromium -ErrorAction SilentlyContinue) -ne $null)
        {
            (Stop-Process -Name chromium | Wait-Process -Name chromium)
            cd "C:\Users\User\PycharmProjects\keysurveyscrape\Key Survey Webscrape"
            python processing.py
        }
        else
        {
            cd "C:\Users\User\PycharmProjects\keysurveyscrape\Key Survey Webscrape"
            python processing.py
        }
    }
 }
   