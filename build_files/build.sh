#!/bin/bash

set -ouex pipefail

# Copy the contents of system_files/ of the git repo to /
cp -avf "/ctx/system_files"/. /

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1

### Install Niri and Wayland dependencies

dnf5 install -y \
    niri \
    libxkbcommon \
    libxkbcommon-devel

### Install essentials
dnf5 install -y \
    git \
    toolbox

### Install flatpak?
dnf5 install -y flatpak
# Add Flathub remote (the main Flatpak repository)
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

### Some preinstalled apps
flatpak install -y flathub org.kde.konsole org.kde.dolphin io.gitlab.librewolf-community

### Install niri and dms
dnf5 -y copr enable avengemedia/dms
dnf5 install -y niri dms
# Disable COPRs so they don't end up enabled on the final image:
dnf5 -y copr disable avengemedia/dms

### SDDM
dnf5 install -y sddm
systemctl enable sddm