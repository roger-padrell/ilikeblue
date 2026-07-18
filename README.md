# ILikeBlue

A custom Fedora Atomic image.

## Base System

- Built on Fedora 44
- Uses `ublue-os/base-main` from [ublue](https://universal-blue.org/) as the base image

## Features

- [Niri](https://niri-wm.github.io/niri) as Window Manager
- [DankMaterialShell](https://github.com/AvengeMedia/DankMaterialShell) as Desktop
- Flatpak+flathub
- Native homebrew (`ghcr.io/ublue-os/brew`)
- Toolbox
- Very lightweight

## Install

From existing Fedora Atomic/Universal Blue installation switch to ilikeblue image:

```bash
sudo bootc switch --enforce-container-sigpolicy ghcr.io/roger-padrell/ilikeblue:latest
```

If you want to install the image on a new system download and install Bazzite ISO first:

<https://download.bazzite.gg/>

## Package management

GUI apps can be found as Flatpaks in the Discover app or [FlatHub](https://flathub.org/) and installed with `flatpak install ...`.

CLI apps are available from [Homebrew](https://formulae.brew.sh/) using `brew install ...`.

## Acknowledgments

This project is based on the [Universal Blue image template](https://github.com/ublue-os/image-template) and builds upon the excellent work of the Universal Blue community.

This document is highly based on [amyos](https://github.com/astrovm/amyos/tree/main) README.md.