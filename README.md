# 🔐 Folder Locker Tool (Batch Script) – by Dilshan De Silva

A simple Windows batch script to **lock, hide, and unhide folders** with a password — no extra software needed. Perfect for beginners learning CMD scripting and basic file protection techniques.

---

## 🛠 Features

- ✅ Auto-creates a folder named `Locker`
- 🔐 Password-protected access to unhide folder
- 👁️ Hides folder using Windows `attrib +h +s` command
- 🖥️ Colorful Command Prompt UI (`color 0A`)
- 🧠 Simple, lightweight, and fully customizable

---

## 💡 How to Use

1. **Download or copy the script**
2. Save it as `locker.bat` (not `.txt`)
3. Double-click the file to run
4. Choose an option from the menu:
   - `1` → Hide Folder
   - `2` → Unhide Folder (requires password)
   - `3` → Exit

---

## 🔑 How to Change the Password

Open the script in Notepad or any text editor.

Find this section at the top:

```batch
:: ======== SET PASSWORD HERE =========
set "PASSWORD=1111"
:: ====================================
