REM Set Release or Debug configuration.
IF "%1"=="Release" (set CONFIGURATION=Release) ELSE (set CONFIGURATION=Debug)
ECHO Building in %CONFIGURATION%

REM Build the C# solution.
CALL dotnet build src/ExtendedCms.TinyMceEnhancements.sln -c %CONFIGURATION%
IF %errorlevel% NEQ 0 EXIT /B %errorlevel%

EXIT /B %ERRORLEVEL%