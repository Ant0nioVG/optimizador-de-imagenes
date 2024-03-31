@echo off
setlocal enabledelayedexpansion

set "cwebp_path=C:\Users\nombre de usuario de windows\ruta de donde esta\optimizador\libwebp-1.3.2-windows-x64\bin\cwebp.exe"
set "input_dir=C:\Users\nombre de usuario de windows\ruta de donde esta\optimizador\img_sin_optimizar"
set "output_dir=C:\Users\nombre de usuario de windowsruta de donde esta\optimizador\img_optimizadas"

for %%f in ("%input_dir%\*.png") do (
    echo Convirtiendo "%%~nf.png" a WebP...
    "!cwebp_path!" "%%f" -o "%output_dir%\%%~nf.webp"
    echo Conversion completa.
)

for %%f in ("%input_dir%\*.jpg") do (
    echo Convirtiendo "%%~nf.jpg" a WebP...
    "!cwebp_path!" "%%f" -o "%output_dir%\%%~nf.webp"
    echo Conversion completa.
)

echo Todas las imágenes han sido convertidas a WebP.
pause
