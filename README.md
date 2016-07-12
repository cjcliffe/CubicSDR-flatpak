# CubicSDR flatpak build

_Note: work-in-progress_

Install ```flatpak``` and ```flatpak-builder``` using instructions from http://flatpak.org/getting.html

Commands:
```
$ git clone https://github.com/cjcliffe/CubicSDR-flatpak.git
$ cd CubicSDR-flatpak
$ make
```

Installing the result elsewhere:
```
$ flatpak install --bundle CubicSDR.flatpak
```

Running the installed version:
```
@ flatpak run com.cubicsdr.App
```

Un-installing: (or before re-install)
```
$ flatpak uninstall com.cubicsdr.App
```

Thanks to @digver for the intial flatpak work.
