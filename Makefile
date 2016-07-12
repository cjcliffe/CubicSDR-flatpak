REPO=./repo

all: CubicSDR.flatpak

app: com.cubicsdr.App.json
	rm -rf build
	flatpak-builder --ccache --require-changes --repo=$(REPO) ./build com.cubicsdr.App.json

CubicSDR.flatpak: app
	flatpak build-bundle $(REPO) CubicSDR.flatpak com.cubicsdr.App

check:
	json-glib-validate *.json
    
