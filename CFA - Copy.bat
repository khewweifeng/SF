@echo off
color 1F

:Start
set /p siteCode="Enter Site Code: "
set /p tcaName="Enter TCA Name: "
set /p tcaContact="Enter TCA Contact: "
set /p candidateNumber="Enter Candidate Number: "
set /p candidateName="Enter Candidate Name: "

for /f "tokens=*" %%i in ('powershell -command "[CultureInfo]::InvariantCulture.TextInfo.ToUpper('%candidateName%')"') do set candidateName=%%i
for /f "tokens=*" %%i in ('powershell -command "[CultureInfo]::InvariantCulture.TextInfo.ToUpper('%tcaName%')"') do set tcaName=%%i

set /p issueHappenedTime="Enter Issue Happened Time (hh:mm): "
if "%issueHappenedTime:~1,1%"==":" set issueHappenedTime=0%issueHappenedTime%
if "%issueHappenedTime:~2,1%"==":" (
    set hour=%issueHappenedTime:~0,2%
    set minute=%issueHappenedTime:~3,2%
) else (
    set hour=%issueHappenedTime:~0,2%
    set minute=%issueHappenedTime:~2,2%
)
set issueHappenedTime=%hour%:%minute%

set /p issueReportTime="Enter Issue Report Time (hh:mm): "
if "%issueReportTime:~1,1%"==":" set issueReportTime=0%issueReportTime%
if "%issueReportTime:~2,1%"==":" (
    set hour=%issueReportTime:~0,2%
    set minute=%issueReportTime:~3,2%
) else (
    set hour=%issueReportTime:~0,2%
    set minute=%issueReportTime:~2,2%
)
set issueReportTime=%hour%:%minute%

set /p issue="Enter Issue: "

set data="Site Code: %siteCode%\r\nTCA Name: %tcaName%\r\nTCA Contact: %tcaContact%\r\nCandidate Number: %candidateNumber%\r\nCandidate Name: %candidateName%\r\nIssue Happened Time: %issueHappenedTime%\r\nIssue Report Time: %issueReportTime%\r\nIssue: %issue%"

echo.
echo Site Code: %siteCode%
echo TCA Name: %tcaName%
echo TCA Contact: %tcaContact%
echo Candidate Number: %candidateNumber%
echo Candidate Name: %candidateName%
echo Exam status: scheduled
echo Issue Happened Time: %issueHappenedTime%
echo Issue Report Time: %issueReportTime%
echo Issue: %issue%

echo.

goto Start
