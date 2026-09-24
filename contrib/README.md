# contrib — deployment artifacts (our Ubuntu 26.04 / GNOME Wayland box)

Everything in this folder is what we ended up with after deploying uur
rootlessly on the target machine. See https://github.com/panxuc/uur/issues/12
for the full environment notes and the open DPI / quit-absence findings.

- `bin/uur-wrapper.sh` — rootless launcher wrapper: prepends the portable
  Wine build to PATH, then execs the real uur binary (both under `~/.local/opt`).
  Install as `~/.local/bin/uur`.
- `desktop/uur.desktop` — app-menu entry with two fixes upstream's .desktop
  lacks:
  - `StartupWMClass=gameviewer.exe` so GNOME shows the UU icon instead of the
    generic gear placeholder (live window class is exactly `gameviewer.exe`);
  - an `Actions=Quit` entry running `uur stop`.
- `desktop/uur-quit.desktop` — standalone "退出 UU远程" entry that runs
  `uur stop`, giving an explicit way to fully stop remote control.

Paths are absolute for this machine (`/home/sdr/...`); adjust to your prefix.
