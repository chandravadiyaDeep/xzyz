# DEEP Code Expander

A local Windows text-expansion utility for inserting reusable code snippets in editors where local text expansion is permitted.

## Scope and safety

- Intended for ordinary, non-proctored practice editors.
- Does not automate submissions, inspect page internals, inject JavaScript, defeat focus restrictions, or bypass proctoring.
- If the browser/editor blocks external text input, use only the editor's supported snippets or permitted paste workflow.

## Windows quick start

1. Install AutoHotkey **v2**: https://www.autohotkey.com/
2. Clone: `git clone https://github.com/chandravadiyaDeep/xzyz.git`
3. Double-click `install.bat`, or run `DEEP.ahk` directly after installing AutoHotkey v2.
4. Edit snippets in `library\cpp\` or `library\python\`.
5. Test first in Notepad. Then test in an ordinary HackerRank practice editor if its rules and browser allow text expansion.

## Default triggers

| Trigger | Snippet file |
|---|---|
| `;deepA` | `library\cpp\A.txt` |
| `;deepB` | `library\cpp\B.txt` |
| `;deepC` | `library\cpp\C.txt` |
| `;pyA` | `library\python\A.txt` |
| `;pyB` | `library\python\B.txt` |
| `;pyC` | `library\python\C.txt` |

Type the trigger followed by Space or Enter. AutoHotkey replaces the trigger with the complete file contents; the delimiter is retained. These are expansion shortcuts, not real Python/C++ import statements.

## Add a snippet

1. Create a UTF-8 text file such as `library\cpp\two_sum.txt`.
2. Add an explicit hotstring to `DEEP.ahk`, for example:
   ` :O:;twoSum::ExpandSnippet("cpp", "two_sum") `
   (remove the leading space before the colon).
3. Save the script, then right-click its tray icon and choose Reload Script.

## Troubleshooting

- Use AutoHotkey v2, not v1.
- Confirm DEEP's tray icon is visible.
- If it works in Notepad but not the browser, that editor/browser is intercepting external input. Do not attempt to circumvent a secure assessment.
- Keep the script and browser running as the same Windows user. Do not run as administrator unless required.

## Privacy

Snippets are read locally from this repository. No keystrokes or editor content are sent to a server. No API key or internet connection is required at runtime.
