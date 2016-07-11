REPO=./repo

all: app

app: com.cubicsdr.App.json
	rm -rf build
	flatpak-builder --ccache --require-changes --repo=$(REPO) ./build com.cubicsdr.App.json

check:
	json-glib-validate *.json
    
