
 @echo off

set "PASTA=mysql_data"

if exist "%PASTA%" (
    rmdir /S /Q "%PASTA%"
) else (
    echo Pasta %PASTA% não encontrada.
)

docker-compose up -d


