@echo off
echo [*] Disabling Vulnerable Driver Blocklist...

reg add "HKLM\SYSTEM\CurrentControlSet\Control\CI\Config" /v VulnerableDriverBlocklistEnable /t REG_DWORD /d 0 /f

if %errorlevel%==0 (
    echo [+] Successfully disabled vulnerable driver blocklist.
) else (
    echo [-] Failed to modify registry. Run as Administrator.
)

pause
