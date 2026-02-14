@echo off
echo ==========================================
echo      Deploying Job Application Tracker
echo ==========================================
echo.
echo 1. Checking Vercel login status...
call npx vercel whoami
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo Not logged in. Please log in to Vercel now.
    call npx vercel login
)

echo.
echo 2. Starting prod deployment...
call npx vercel --prod

echo.
echo ==========================================
echo      Deployment Process Finished
echo ==========================================
pause
