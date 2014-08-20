#include "..\UIAWrappers.au3"
#include "libraries\Assert.au3"

AssertIsFalse(ProcessExists("notepad.exe"), "Please close notepad.exe before running tests")

$pid = Run("notepad.exe")
WinWait("Untitled - Notepad")
$hWnd = WinGetHandle("Untitled - Notepad")

$oNotepad = __UIA_ControlGetFromHwnd($hWnd)

AssertIsType($oNotepad, "Object")

While ProcessExists("notepad.exe")
	ProcessClose("notepad.exe")
WEnd