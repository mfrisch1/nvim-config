# 🌀 My Neovim Config

Welcome to my personal [Neovim](https://neovim.io) configuration! This setup is focused on speed, simplicity, and an enjoyable development experience. Built with Lua and packed with modern tools and plugins for coding, writing, and everything in between.

> ⚠️ **Note:** This is my personal config and is tailored to my workflow. Feel free to fork and tweak it to your liking!

---

## ✨ Features

- ⚡ **Blazing fast startup** with lazy loading
- 🎨 Beautiful UI with themes and statusline
- 🧠 LSP, autocompletion, and code formatting
- 🧰 Git integration, fuzzy finding, and more
- 📝 Markdown and LaTeX support

---

## 📦 Clean Install

Make sure you have **Neovim (v0.9+)** installed. Then, follow the steps below:

### 1. Remove existing config (optional)

```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
```

### 2. Clone this config 
```bash
git clone https://github.com/mfrisch1/nvim-config.git ~/.config/nvim
```

### 3. Launch Neovim 
```bash
nvim
``` 
if plugins are not install automatically run:
:checkhealth
:Lazy sync

🔧 Recommended Tools
Install these for best experience:

ripgrep  
fd  
Node.js (for some LSPs and formatters)  
Mason (handles LSP/DAP/formatter installation)  

---

### 🙏 Acknowledgments

This configuration was crafted with personal experience and guidance from [ChatGPT](https://openai.com/chatgpt), which helped refine structure, documentation, and best practices.
