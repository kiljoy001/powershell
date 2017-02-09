while ($true)
{
    # check for process1
    if((Get-Process -Name python) -eq $null)
    {
        #check if chromiumn is running
        if((Get-Process -Name chromium) -eq !$null)
        {
            sleep -s 10  
        }

    }
    else
    {
        # check if chromium is still running, if so close.
        if((Get-Process -Name chromium) -eq !$null)
        {
            (Stop-Process -Name chromium | Wait-Process)
            cd "C:\Users\User\PycharmProjects\keysurveyscrape\Key Survey Webscrape"
            python processing.py
        }
    }
}