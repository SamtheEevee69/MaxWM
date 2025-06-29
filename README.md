# MaxWM 🧠✨
**MaxWM** is a work-in-progress **X11-only window manager** built from scratch with love, C, and chaos.

> ⚠️ **Heads up!** Development is slow because I'm just one person — sometimes coding, sometimes gaming, sometimes flat-out horizontal. Updates will come, but patience is key. 😅

> Think of it like your WM — but with bones, brains, and a config file that *actually listens to you*.

---

## 🚀 Features (Planned / WIP)

- 🖥️ **X11 Only** – Old-school and proud.
- 💫 **Animations** – Optional. Turn them off if your toaster cries.
- ⚙️ **Configurable** – Edit via `~/.config/maxwm/config` **or for newbies who are scared of config files** You can use the included GUI config app.
- ⌨️ **Custom Shortcuts** – Keybinds that actually make sense.
- 🪟 **Dynamic Tiling Layouts** – With scripting support planned.
- 🧠 **IPC System** – Live interaction through scripts or terminals (planned).
- 🦴 **GameMaker-Inspired “Bone” Logic** – Windows behave with logic chains (future idea).
- 📐 **Border + Gap Control** – Riced? MaxWM says yes.
- 🧃 **Lightweight** – Minimal deps, low RAM, high vibes.
- 🔳 **Focus Mode** – One keybind to hide colors, mute distractions, and lock into a clean, zero-noise workspace.

---

## 🧪 Current State

Right now, MaxWM:
- Starts on X11 (via Xephyr or directly).
- Opens an xterm.
- Has basic keybinding and event loop code in progress.

*This is early-stage dev — expect bugs, crashes, and maybe enlightenment.*
***Not even a simple Alpha/Beta is Usable for Customer testing yet.***

---

## 🛠️ Setup / Running

Right now, there is no Beta nor Alpha NOR ANY BUILD runnable
If there is an alpha or any runnable version though
I suggest this
Run the internal `run_MaxWM.sh` which runs the Xephyr Xserver then runs MaxWM inside it in an 800x600 size

### 📜 `run_MaxWM.sh` – What It Does

```bash
#!/bin/bash

# Launches a new Xephyr X server on display :2 with a screen size of 800x600
Xephyr :2 -screen 800x600 &
echo "Launched the nested XServer (Xephyr)"

# Give it a moment to initialize
sleep 0.5

# Set the DISPLAY environment variable to the Xephyr server and run MaxWM
DISPLAY=:2 ./startmaxwm
```
