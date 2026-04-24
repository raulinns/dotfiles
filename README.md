# Dotfiles

## Applications

| Component | Application |
|---|---|
| Window Manager | [Hyprland](https://hyprland.org/) |
| Status Bar | [Waybar](https://github.com/Alexays/Waybar) |
| App Launcher | [Wofi](https://hg.sr.ht/~scoopta/wofi) |
| Fetch | [Fastfetch](https://github.com/fastfetch-cli/fastfetch) |
| Editor | [Neovim](https://neovim.io/) |

---

### Hyprland (`hypr/`)

Config is split across multiple files:

```
hypr/
├── hyprland.conf       # Main config (env, rules, layout, etc.)
├── hyprlock.conf       # Lockscreen
├── hyprpaper.conf      # Wallpaper
└── conf/
    ├── monitor.conf    # Monitor setup
    ├── autostart.conf  # Startup programs
    └── binds.conf      # Keybindings
```

---

### Waybar (`waybar/`)

Status bar layout:

- **Left**: Hyprland workspaces, uptime
- **Center**: Clock, battery
- **Right**: Volume, network, bluetooth, RAM, tray

Hot reload on config change:

```bash
~/.config/waybar/reload.sh
```

> Recommended font: [JetBrains Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip)

---

### Wofi (`wofi/`)

```
wofi/
├── config
├── style.css               # Default style
├── style-wallpaper.css     # Wallpaper variant
└── style-waybar.css        # Waybar-matched variant
```

---

### Fastfetch (`fastfetch/`)

System info fetcher with a custom HMIF logo.

```
fastfetch/
├── config.jsonc    # Module & layout config
├── HMIF.png        # Logo image
└── HMIF.txt        # ASCII logo fallback
```

---

### Neovim (`nvim/`)

[lazy.nvim](https://github.com/folke/lazy.nvim) based config. See [nvim/README.md](nvim/README.md) for full plugin list, LSP setup, and keymaps.

---

## Installation

```bash
git clone <repo-url> ~/.config
```

> Make sure all applications listed above are installed before applying this config.
