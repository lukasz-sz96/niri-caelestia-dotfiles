# niri-caelestia-dotfiles

Personal dotfiles for a Niri + niri-caelestia-shell desktop. This repository is
meant to be installed as a bare Git repository with `$HOME` as the work tree.

## Install

The niri-caelestia-shell v2 installer clones this repo automatically. Manual
install:

```sh
git clone --bare https://github.com/lukasz-sz96/niri-caelestia-dotfiles.git "$HOME/.dotfiles.git"
git --git-dir="$HOME/.dotfiles.git" --work-tree="$HOME" checkout -f main
git --git-dir="$HOME/.dotfiles.git" --work-tree="$HOME" config status.showUntrackedFiles no
```

## Daily Use

The repo installs a small helper at `~/.local/bin/dots`:

```sh
dots status
dots add ~/.config/niri/niri/input.kdl
dots commit -m "Update niri input config"
dots push
```

Fish also gets a `dots` function. In fish, `dots cd` changes to `$HOME`; in
other shells use `cd "$(dots root)"`.

## Generated Files

Matugen and the shell color pipeline generate files such as:

- `~/.config/niri/colors.kdl`
- `~/.config/gtk-3.0/gtk.css`
- `~/.config/gtk-4.0/gtk.css`
- `~/.config/mpv/script-opts/niri_caelestia.conf`
- `~/.config/btop/themes/niri_caelestia.theme`
- `~/.config/Kvantum/MaterialAdw/`
- `~/.local/state/quickshell/user/generated/`

Keep those out of Git. Stable inputs and templates belong here; generated
outputs should remain writable live files.
