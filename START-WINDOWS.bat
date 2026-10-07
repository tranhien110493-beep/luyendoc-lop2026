@echo off
setlocal
cd /d "%~dp0"
if not exist .env copy .env.example .env >nul
where node >nul 2>nul
if errorlevel 1 (
  echo Chua cai Node.js 20+. Hay cai Node.js roi chay lai file nay.
  pause
  exit /b 1
)
where pnpm >nul 2>nul
if errorlevel 1 (
  echo Dang kich hoat pnpm...
  corepack enable
)
if not exist node_modules (
  echo Dang cai thu vien lan dau, vui long cho...
  call pnpm install
  if errorlevel 1 (
    echo Cai thu vien that bai. Hay kiem tra Internet.
    pause
    exit /b 1
  )
)
call pnpm dev
pause
