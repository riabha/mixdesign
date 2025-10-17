@echo off
echo ========================================
echo  Concrete Mix Design Dashboard
echo  Vercel Deployment Script
echo ========================================
echo.

echo Checking for Vercel CLI...
where vercel >nul 2>&1
if %errorlevel% neq 0 (
    echo Vercel CLI not found!
    echo.
    echo Installing Vercel CLI...
    npm install -g vercel
    echo.
)

echo.
echo Starting deployment...
echo.

vercel --prod

echo.
echo ========================================
echo  Deployment Complete!
echo ========================================
echo.
echo Your dashboard is now live!
echo Check the URL above to access it.
echo.
pause

