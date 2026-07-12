; --- AutoIt App Automation Suite ---
#include <MsgBoxConstants.au3>

; 1. Wait a maximum of 15 seconds for your custom OpenCV window to launch
Local $windowTitle = "OpenCV Project Test Frame"
Local $hWnd = WinWait($windowTitle, "", 15)

If $hWnd Then
    ; 2. Center and resize the rendering box window on your workspace
    WinMove($hWnd, "", 100, 100, 500, 500)
    WinActivate($hWnd)
    
    ; 3. Keep the frame active for 4 seconds (perfect for testing loops)
    Sleep(4000)
    
    ; 4. Simulate a keyboard Space stroke to safely trigger your code's cv::waitKey(0) block
    Send("{SPACE}")
Else
    MsgBox($MB_ICONERROR, "Pipeline Error", "Timeout: The C++ application window could not be found.")
EndIf
