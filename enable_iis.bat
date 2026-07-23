@echo off
echo ========================================================
echo Installing IIS HTTP and ASP.NET Features...
echo ========================================================

dism /online /Enable-Feature /FeatureName:IIS-WebServerRole /FeatureName:IIS-WebServer /FeatureName:IIS-CommonHttpFeatures /FeatureName:IIS-StaticContent /FeatureName:IIS-DefaultDocument /FeatureName:IIS-HttpErrors /FeatureName:IIS-ASPNET45 /FeatureName:IIS-NetFxExt45 /All

echo ========================================================
echo Restarting IIS Service...
echo ========================================================
iisreset

echo ========================================================
echo Done! Please reopen IIS Manager (inetmgr).
echo ========================================================
pause
