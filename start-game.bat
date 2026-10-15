@echo off
setlocal
cd /d "%~dp0"

where node >nul 2>nul
if errorlevel 1 (
  echo Node.js is required. Install Node.js 22 LTS, then run this file again.
  pause
  exit /b 1
)

if not exist "node_modules\@mediapipe\tasks-vision\wasm\vision_wasm_internal.js" (
  echo First run: installing the game's locked dependencies. This needs an internet connection.
  call npm ci --no-audit --no-fund
  if errorlevel 1 (
    echo Dependency installation failed. Check your internet connection and try again.
    pause
    exit /b 1
  )
)

echo.
echo Starting Bharat Truck Simulator.
echo When Vite shows its Local address, open that address in Google Chrome.
echo Keep this window open while playing. Press Ctrl+C here to stop the game.
echo.
call npm run dev -- --host 127.0.0.1
pause
