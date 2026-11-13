"""Validate DEEP snippet folders and print available snippet names.

All code in this file is commented/documented for easy modification.
"""
from pathlib import Path

# Resolve the project root from this file's location.
PROJECT_ROOT = Path(__file__).resolve().parents[1]
LIBRARY_ROOT = PROJECT_ROOT / "library"

def main() -> int:
    # Check both initial language folders.
    for language in ("cpp", "python"):
        folder = LIBRARY_ROOT / language
        snippets = sorted(folder.glob("*.txt")) if folder.exists() else []

        print(f"\n{language.upper()} snippets:")
        if not snippets:
            print("  (none found)")
            continue

        # Display snippet names and file sizes for a quick sanity check.
        for snippet in snippets:
            print(f"  {snippet.stem:20} {snippet.stat().st_size:>6} bytes")

    return 0

if __name__ == "__main__":
    raise SystemExit(main())
