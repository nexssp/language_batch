@if (@CodeSection == @Batch) @then
@echo off & setlocal

set "JSON={ "year": 2016, "time": "05:01" }"

rem // re-eval self with JScript interpreter and capture results
for /f "delims=" %%I in ('cscript /nologo /e:JScript "%~f0"') do set "%%~I"

rem // output captured results
set JSON[

rem // end main runtime
goto :EOF

@end // end Batch / begin JScript hybrid code

var htmlfile = WSH.CreateObject('htmlfile'),
    txt = WSH.CreateObject('Wscript.Shell').Environment('process').Item('JSON');

htmlfile.write('<meta http-equiv="x-ua-compatible" content="IE=9" />');
var obj = htmlfile.parentWindow.JSON.parse(txt);
htmlfile.close();

for (var i in obj) WSH.Echo('JSON[' + i + ']=' + obj[i]);