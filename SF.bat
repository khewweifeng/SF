@echo off
:Start
set /p siteCode="Enter Site Code: "
set /p candidateNumber="Enter Candidate Number: "
set /p candidateName="Enter Candidate Name: "

for /f "tokens=*" %%i in ('powershell -command "[CultureInfo]::InvariantCulture.TextInfo.ToUpper('%candidateName%')"') do set candidateName=%%i

set /p windowsVersion="Enter Windows Version: "
set /p issue="Enter Issue: "
set /p solution="Enter Solution: "


set data="Site Code: %siteCode%\r\nCandidate Number: %candidateNumber%\r\nCandidate Name: %candidateName%\r\nIssue: %issue%\r\nSolution: %solution%\r\nWindows Version: %windowsVersion%"
echo.
echo Site Code: %siteCode%
echo Candidate Number: %candidateNumber%
echo Candidate Name: %candidateName%
echo Windows Version: %windowsVersion%
echo Exam status: scheduled
echo.
echo Issue: %issue%
echo.
echo Solution: %solution%

echo.

goto Start
