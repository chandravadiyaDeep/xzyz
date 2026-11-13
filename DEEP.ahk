#Requires AutoHotkey v2.0
#SingleInstance Force

; DEEP Code Expander - local text expansion only.
; Use only where external text expansion is permitted.
; No browser DOM access, page injection, or security bypass.

global DEEP_ROOT := A_ScriptDir
global DEEP_LIBRARY := DEEP_ROOT "\library"

; C++ snippets
:O:;deepA::ExpandSnippet("cpp", "A")
:O:;deepB::ExpandSnippet("cpp", "B")
:O:;deepC::ExpandSnippet("cpp", "C")

; Python snippets
:O:;pyA::ExpandSnippet("python", "A")
:O:;pyB::ExpandSnippet("python", "B")
:O:;pyC::ExpandSnippet("python", "C")

; Open the local library with Ctrl+Alt+Shift+D.
^!+d::Run('explorer.exe "' DEEP_ROOT '"')

ExpandSnippet(language, name) {
    global DEEP_LIBRARY
    filePath := DEEP_LIBRARY "\" language "\" name ".txt"

    if !FileExist(filePath) {
        TrayTip("Snippet not found", filePath, 3)
        return
    }

    try {
        snippet := FileRead(filePath, "UTF-8")
    } catch as err {
        TrayTip("Could not read snippet", err.Message, 3)
        return
    }

    if (Trim(snippet) = "") {
        TrayTip("Empty snippet", filePath, 3)
        return
    }

    ; SendText emits ordinary keystrokes. It does not manipulate browser internals.
    SendText(snippet)
}

TrayTip("DEEP is running", "Try ;deepA / ;deepB / ;deepC in an allowed editor.", 3)
