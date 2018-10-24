# SetScreenResolution

### Designed to alleviate issues regarding potentially locking a workspace and adjusting the resolution to the window of the interfacing tool, such as Remote Desktop or vSphere.

------­---­-----

`set-screenresolution -width 1920 -height 1080`
This line at the bottom of SetResolution.ps1 dictates the resolution requirement. Hard coded here for simplicity as no other resolutions will be necessary.

---


````
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""D:\Program Files\Disconnect RDP and Lock\SetResolution.ps1""' -Verb RunAs}"
````
This first line of the Set Resolution, Disconnect RDP, and Lock.bat file dictates to the computer to execute this as an administrator. This location is hard coded in my example, but can easily be modularized by either placing it in the same directory and calling it like `.\SetResolution.ps1` or by importing it as a variable and calling it instead of the path.
