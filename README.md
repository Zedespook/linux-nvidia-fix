# Linux and NVIDIA optimization

## Instructions
Open up a terminal
```bash
git clone https://github.com/Zedespook/linux-nvidia-fix.git
```

```bash
cd linux-nvidia-fix
```

```bash
sh tearing-fix.sh
```

### Or
1. Add `tearing-fix.sh` to autostart
2. Restart

## Why?
- Fixes tearing with V-Sync in the desktop and not limiting game FPS
- Sets GPU power plant to best performance
- Adds digital vibrance for better colors
- Disables V-Blank sync
- Disables flipping (flicker fix for OBS)
- `xset r rate 300 50` makes cursor refresh rate faster.

## Other uses

### Lutris
1. Run `disable-tearing-fix.sh` on startup
2. Run `tearing-fix.sh` on exit
