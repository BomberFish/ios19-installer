all: build package clean

PROJECT = $(shell basename *.xcodeproj)
TARGET = ios19seed
CONFIGURATION = Release
SDK = iphoneos

build:
	echo "building for SDK $(SDK)..."
	xcodebuild -project $(PROJECT) -target $(TARGET) -configuration $(CONFIGURATION) -sdk $(SDK) CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO CODE_SIGNING_ALLOWED=NO clean build
	echo "build finished!"

package:
	rm -rf Payload
	mkdir Payload
	cp -r build/$(CONFIGURATION)-$(SDK)/$(TARGET).app Payload
	zip -r ios19.ipa Payload
	cp -r ios19.ipa ios19.tipa

clean:
	rm -rf Payload
	rm -rf build

