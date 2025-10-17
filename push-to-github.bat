@echo off
echo ========================================
echo  Push to GitHub - Concrete Mix Design
echo  QUEST Civil Engineering Department
echo ========================================
echo.

echo STEP 1: First, create a repository on GitHub:
echo   1. Go to https://github.com/new
echo   2. Repository name: concrete-mix-design-quest
echo   3. Description: Advanced Concrete Mix Design Dashboard - QUEST 2025
echo   4. Choose Public
echo   5. Do NOT initialize with README
echo   6. Click "Create repository"
echo.

set /p github_url="STEP 2: Enter your GitHub repository URL (e.g., https://github.com/username/repo.git): "

echo.
echo Connecting to GitHub...
git remote add origin %github_url%

echo.
echo Renaming branch to main...
git branch -M main

echo.
echo Pushing to GitHub...
git push -u origin main

echo.
echo ========================================
echo  SUCCESS! Your code is now on GitHub!
echo ========================================
echo.
echo Next steps:
echo 1. Go to https://vercel.com
echo 2. Sign in with GitHub
echo 3. Import your repository
echo 4. Click Deploy
echo.
echo Your dashboard will be live!
echo.
pause

