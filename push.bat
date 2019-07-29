@echo off
setlocal EnableDelayedExpansion
git pull
git add .
git commit -m "Auto Update@%date% %time%"
git push