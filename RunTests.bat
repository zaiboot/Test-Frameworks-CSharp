setlocal enableDelayedExpansion
SET parameters=xUnit.Tests\bin\Debug\xUnit.Tests.dll xUnit.Tests.json -html xunit-results.html
SET xUnitRunner="packages\xunit.runner.console.2.1.0\tools\xunit.console.exe" 
"packages\OpenCover.4.6.519\tools\OpenCover.Console.exe" -target:%xUnitRunner% -targetargs:"%parameters%"
REM exit 0