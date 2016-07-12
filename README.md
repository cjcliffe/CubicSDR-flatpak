# CubicSDR flatpak build

_Note: work-in-progress_

Install ```flatpak``` and ```flatpak-builder``` using instructions from http://flatpak.org/getting.html

Install Gnome Runtime and Sdk, if 'install' steps fail just run again to retry/resume until they pass
```
$ wget https://sdk.gnome.org/keys/gnome-sdk.gpg
$ sudo flatpak remote-add --gpg-import=gnome-sdk.gpg gnome https://sdk.gnome.org/repo/
$ flatpak install gnome org.gnome.Platform 3.20
$ flatpak install gnome org.gnome.Sdk 3.20
```

Commands:
```
$ git clone https://github.com/cjcliffe/CubicSDR-flatpak.git
$ cd CubicSDR-flatpak
$ make
```

Installing the resulting .flatpak file:
```
$ flatpak install --bundle CubicSDR.flatpak
```

Running the installed app:
```
$ flatpak run com.cubicsdr.App
```

Un-installing: (or before re-install)
```
$ flatpak uninstall com.cubicsdr.App
```

Thanks to @digver for the intial flatpak work.
