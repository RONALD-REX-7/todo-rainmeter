# Contributing to Rainmeter To-Do List

Thank you for your interest in contributing to the **Rainmeter To-Do List** desktop skin! We welcome bug reports, design enhancements, mathematical scaling improvements, and documentation refinements.

---

## 🛠️ Development & Environment Setup

1. **Prerequisites**:
   - Windows 10 / Windows 11
   - [Rainmeter](https://www.rainmeter.net/) version `4.5` or later.
   - Text editor with Lua and INI syntax highlighting (VS Code with Rainmeter extension recommended).

2. **Skin Directory Location**:
   Clone or link the repository to your Rainmeter Skins path:
   ```powershell
   # Default path:
   %USERPROFILE%\Documents\Rainmeter\Skins\todo-rainmeter
   ```

3. **Reloading the Skin**:
   After modifying `.ini` or `.lua` files, right-click the skin on your desktop and select **Refresh skin** (or use `!Refresh` bang) to reload changes instantly.

---

## 📐 Coding & Formatting Guidelines

- **Proportional Scaling**: When adjusting UI elements, maintain mathematical proportionality using `AppFontSize` and relative sizing variables rather than hardcoded pixel values.
- **Lua Scripts**: Keep `json.lua` intact as an upstream library. Place helper scripts in `@Resources/Scripts/`. Ensure functions handle empty or corrupted `tasks.json` gracefully without throwing runtime errors.
- **Asset Attribution**: If introducing new icon glyphs, audio chimes, or fonts, ensure they carry permissive open-source licenses and record attribution in `ASSET_LICENSES.md`.

---

## 🌿 Branching & Pull Requests

1. Fork or branch from `main`.
2. Name your branch descriptively: `fix/checkbox-alignment`, `feat/color-preset-palette`, or `docs/quickstart`.
3. Test all font size variations and color themes in Rainmeter before opening a pull request.
4. Ensure commit messages describe the functional motivation of the change.

---

## 📄 License & Attribution

Contributions are licensed under the [GNU General Public License v3.0 (GPL-3.0)](LICENSE). By submitting a pull request, you agree that your contributions will be licensed under its terms.
