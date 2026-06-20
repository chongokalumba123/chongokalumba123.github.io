@echo off
REM Simple helper to publish this folder to GitHub Pages on Windows
SETLOCAL

echo This script will initialize a git repo (if needed) and push this folder to GitHub.
echo You will be prompted for the repository URL (use the HTTPS URL from GitHub).

REM Check for git
git --version >nul 2>&1
IF ERRORLEVEL 1 (
  echo Git not found. Please install Git from https://git-scm.com/download/win and rerun this script.
  pause
  exit /b 1
)

REM Ask for repo URL
set /p REPOURL=Enter the GitHub repo URL (example: https://github.com/USERNAME/USERNAME.github.io.git): 

IF "%REPOURL%"=="" (
  echo No URL entered. Exiting.
  exit /b 1
)

REM Initialize repo if .git doesn't exist
if not exist .git (
  echo Initializing git repository...
  git init
)

echo Adding files...
git add .

echo Committing...
git commit -m "Add portfolio site" 2>nul || (
  echo Nothing to commit or commit failed.
)

echo Setting branch to main...
git branch -M main 2>nul

echo Adding remote origin (replace if exists)...
git remote remove origin 2>nul
git remote add origin %REPOURL%

echo Pushing to GitHub (you may be prompted to login)...
git push -u origin main

echo Done. If everything succeeded, your site will be published at https://%REPOURL:~8,-4%/
echo Note: GitHub Pages may take up to a minute to activate. Refresh your repo's Pages settings if needed.

ENDLOCAL
