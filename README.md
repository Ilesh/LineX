<h1 align="center">
  <br>
  <img src="/Linex/Assets.xcassets/AppIcon.appiconset/AppIcon_256@2x.png" alt="Markdownify" width="250">
  <br> Linex <br>
</h1>

<h4 align="center">Feature packed Xcode extension.</h4>

<p align="center">
  <a href="https://swift.org" target="_blank">
    <img src="https://img.shields.io/badge/Swift-4-orange.svg" alt="Language Swift 4">
  </a>
  <a href="https://swift.org" target="_blank">
    <img src="https://img.shields.io/badge/platform-macOS-green.svg" alt="Language Swift 4">
  </a>
  <a href="https://opensource.org/licenses/MIT" target="_blank">
      <img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="License MIT"/>
  </a> 

# Content
- [📦 Installation](#installation)
- [⭐️ Key Features](#key-features)
- [⌨️ Shortcuts](#shortcuts)
- [👩‍💻 Contributing](#contributing)
- [📃 License](#license)

# Installation

## Mac App Store

Linex can be downloaded from the Mac App Store.

<a href="https://itunes.apple.com/us/app/linex-for-xcode/id1290932760?ls=1&mt=12" target="_blank">
    <img src="/Images/mac-app-store.svg" alt="Mac App Store"/>
</a>

## Manual
1. Download the latest [Linex.app](https://github.com/kaunteya/Linex/releases/latest).
2. Move the Linex.app to Applications folder.
3. Open and Close it.
4. Verify if the extensions are added in <kbd>System Preferences</kbd> -> <kbd>Extensions</kbd> -> <kbd>Xcode Source Editor</kbd> as seen below

<img src="/Images/extension-preferences.png" alt="Extension preferences" width="500">

# Key Features
- [Line](#line)
  - [Copy Line](#copy-line)
  - [Open new Line below](#open-new-line-below)
  - [Open New Line Above](#open-new-line-above)
  - [Commented Duplicate](#commented-duplicate)
  - [Delete Line](#delete-line)
  - [Join Line](#join-line)
  - [Line beginning](#line-beginning)
- [Selection](#selection)
  - [Select Word](#select-word)
  - [Select Line](#select-line)
  - [Select Line up](#select-line-up)
  - [One Space](#one-space)
  - [Align](#align)
- [Convert](#convert)
  - [Increment](#convert)
  - [Decrement](#convert)

## Line
### Copy Lines
Duplicates current line or selected line

### Open New Line Below
Inserts new blank line below current line.
This allows you to create a new indented line irrespective of your current caret postion.
![](/Images/opennewline.gif)

### Open New Line Above
Inserts new blank line above current line
![](/Images/openlineabove.gif)

### Commented Duplicate
Duplicate+Comment current line or selected lines. It can be used to check variations in code
![](/Images/commentedduplicate.gif)

### Delete Line
Delete current line or selected lines

### Join Line
Joins the line below or all the selected lines
![](/Images/join.gif)

![](/Images/join-selection.gif)

### Line Beginning
Toggles the caret between indented beginning and the real begninning
![Line Beginning](/Images/togglehome.gif)

## Selection
### Select Word
Selects the word around the caret

### Select Line
Selects line. After selecting current line starts selecting next lines
![Select line](/Images/selectline.gif)

### Select Line up
Selects line above the caret one-by-one
Combination of `Select line` and `Select line up` can be used to expand selection above and below as seen below
![Select line up](/Images/selectdownup.gif)

### One Space
Replace consecutive spaces with one space. Press again to toggle between `one space` and `no space`
![One Space](/Images/onespace.gif)

### Align
Smart align code.
![Align](/Images/propertyalign.gif)

## Convert
### Increment & Decrement
Increment & Decrement using quick shortcuts.
![Increment Decrement](/Images/incrementdecrement.gif)

These shortcuts also toggles `true`, `false`, `YES` & `NO`
![True false](/Images/incdec.gif)

# Shortcuts

## Setting Shortcuts
![Setting shortcuts](/Images/shortcut-demo.gif)

## Recommended Shortcuts

| Action               | Shortcut                                             |
| -------------------- | :--------------------------------------------------: |
| `Line`               |                                                      |
| Copy Lines           | <kbd>OPTN</kbd>+<kbd>↓</kbd>                                                     |
| Open New Line Below  | <kbd>CTRL</kbd>+<kbd>return</kbd>                    |
| Open New Line Above  | <kbd>CTRL</kbd>+<kbd>SHIFT</kbd>+<kbd>return</kbd>   |
| Commented Duplicate  | <kbd>CMD</kbd>+<kbd>CTRL</kbd>+<kbd>/</kbd>          |
| Delete Line          | <kbd>CTRL</kbd>+<kbd>OPTN</kbd>+<kbd>L</kbd>         |
| Join Line            | <kbd>CTRL</kbd>+<kbd>J</kbd>                         |
| Line Beginning       | <kbd>CTRL</kbd>+<kbd>A</kbd>                         |
|                      |                                                      |
| `Selection`          |                                                      |
| Select Word          | <kbd>CTRL</kbd>+<kbd>W</kbd>                         |
| Select Line          | <kbd>CTRL</kbd>+<kbd>L</kbd>                         |
| Select Line up       | <kbd>CTRL</kbd>+<kbd>SHIFT</kbd>+<kbd>L</kbd>        |
| One Space            | <kbd>OPTN</kbd>+<kbd>Space</kbd>                     |
| Align                | <kbd>CMD</kbd>+<kbd>CTRL</kbd>+<kbd>X</kbd>          |
|                      |                                                      |
| `Convert`            |                                                      |
| Increment            | <kbd>CTRL</kbd>+<kbd>+</kbd>                         |
| Decrement            | <kbd>CTRL</kbd>+<kbd>-</kbd>                         |

# Todo
- Expand selection

# Contributing
Pull requests with bug fixes or with new failing Test cases are welcomed.

# License
`Linex` is released under MIT License
