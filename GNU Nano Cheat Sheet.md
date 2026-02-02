## $${\color{red}GNU \ Nano \ Cheat \ Sheet}$$



### 📂 Opening & Starting Nano

```bash
nano file.txt          # Open or create file
nano +10 file.txt      # Open at line 10
nano +10,5 file.txt    # Open at line 10, column 5
nano -l file.txt       # Show line numbers
nano -B file.txt       # Create backup (~)
nano -E file.txt       # Convert tabs to spaces
```

---

### 💾 File Operations

| Action              | Shortcut                  |
| ------------------- | ------------------------- |
| Save file           | `Ctrl + O`                |
| Save as             | `Ctrl + O`, then new name |
| Exit nano           | `Ctrl + X`                |
| Exit without saving | `Ctrl + X`, then `N`      |
| Insert another file | `Ctrl + R`                |

---

### ✏️ Editing

| Action           | Shortcut    |
| ---------------- | ----------- |
| Cut line         | `Ctrl + K`  |
| Paste line       | `Ctrl + U`  |
| Delete character | `Ctrl + D`  |
| Backspace        | `Backspace` |
| Insert new line  | `Enter`     |
| Undo             | `Alt + U`   |
| Redo             | `Alt + E`   |

---

### 🔍 Search & Replace

| Action      | Shortcut   |
| ----------- | ---------- |
| Search      | `Ctrl + W` |
| Search next | `Alt + W`  |
| Replace     | `Ctrl + \` |
| Go to line  | `Ctrl + _` |

---

### 📌 Navigation

| Action            | Shortcut   |
| ----------------- | ---------- |
| Beginning of line | `Ctrl + A` |
| End of line       | `Ctrl + E` |
| Next page         | `Ctrl + V` |
| Previous page     | `Ctrl + Y` |
| Start of file     | `Alt + \`  |
| End of file       | `Alt + /`  |

---

### 🧱 Selection (Marking Text)

| Action          | Shortcut   |
| --------------- | ---------- |
| Start selection | `Alt + A`  |
| Copy selection  | `Alt + 6`  |
| Cut selection   | `Ctrl + K` |
| Paste selection | `Ctrl + U` |

---

### 🛠 Useful Tools

| Action              | Shortcut                    |
| ------------------- | --------------------------- |
| Show help           | `Ctrl + G`                  |
| Spell check         | `Ctrl + T`                  |
| Run command         | `Ctrl + R`, then `Ctrl + X` |
| Toggle line numbers | `Alt + #`                   |
| Toggle soft wrap    | `Alt + $`                   |

---

### ⚙️ Common Nano Config (`~/.nanorc`)

```bash
set linenumbers
set mouse
set softwrap
set tabsize 2
set autoindent
```

Reload nano after editing config.
