Set UAC = CreateObject("Shell.Application")
UAC.ShellExecute "cmd.exe", "/k ""d:\Srayuth\hw9\website\enable_iis.bat""", "", "runas", 1
