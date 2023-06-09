echo off


set itemClass=%1
set itemName=%2
shift
shift


set modelLocation=%~dp0\src\main\resources\assets\%itemClass%\models\item
set textureLocation=%~dp0\src\main\resources\assets\%itemClass%\textures\item
REM https://i.imgur.com/CqLSMEQ.png

REM ==========================
REM Create Model JSON
(
echo {
echo   "parent": "item/generated",
echo   "textures": {
echo     "layer0": "alchemy:item/%itemName%"
echo   }
echo }
)>%modelLocation%\%itemName%.json
REM ==========================

cd %textureLocation%
curl -o "%itemName%.png" https://i.imgur.com/CqLSMEQ.png