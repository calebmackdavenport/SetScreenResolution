PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""D:\Program Files\Disconnect RDP and Lock\SetResolution.ps1""' -Verb RunAs}"

TIMEOUT /T 3

for /f "skip=1 tokens=3" %%s in ('query user %USERNAME%') do (
  %windir%\System32\tscon.exe %%s /dest:console
)
Rundll32.exe user32.dll, LockWorkStation
