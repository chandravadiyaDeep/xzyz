# Test DEEP in a normal HackerRank practice editor

This is a manual compatibility test, not an assessment bypass.

## 1. Install and run

1. Install AutoHotkey v2.
2. Clone the repository and launch `DEEP.ahk`.
3. Open Notepad and type `;pyA` followed by Space.
4. Confirm that the Python function replaces the trigger.
5. Type `;deepA` followed by Space and confirm the C++ snippet expands.

## 2. Test in a normal practice editor

1. Open a normal HackerRank practice challenge in your usual browser.
2. Confirm the page is an ordinary practice environment, not a company test, proctored assessment, or locked-down environment.
3. Click inside the code editor and place the caret where the code belongs.
4. Type `;deepA` (or `;pyA`) followed by Space.
5. Check the inserted code and indentation before running the challenge.

## 3. Expected result

The trigger is replaced with the contents of the corresponding local text file. This is plain local text expansion; the HackerRank runtime does not import the local file.

## 4. If it does not work

- If it fails in Notepad too, check that AutoHotkey v2 is installed and the DEEP tray icon is visible.
- If it works in Notepad but not in HackerRank, the editor/browser is blocking or handling external keystrokes differently.
- Do not try to disable browser protections, inject code into the page, or circumvent assessment controls. Use supported editor snippets or manual insertion instead.

## 5. Useful distinction

Typing `from deep import A` will not invoke this tool. AHK is a local keyboard expander, so the configured trigger (for example `;pyA`) is what causes the source text to be typed.
