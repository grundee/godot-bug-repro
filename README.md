# Example project for bug report

This example project is a reproduction of https://github.com/godotengine/godot/issues/56417.

## Instructions

### Check out

1. Checkout this repository.
2. `git submodule init`
3. `git submodule update`

### Build Godot Headers

1. `cd ios/plugins/AppodealExample/godot`
2. `scons target=release platform=iphone`
    You don't need to complete a whole build, Ctrl+C once files begin building (this is after headers have been generated).

### Plugin Dependencies

1. Go to https://wiki.appodeal.com/en/ios/get-started.
2. Under "Import SDK" press "Manual"
3. Press the button to download "iOS SDK 2.11.0"
4. Extract the zip file.
5. Navigate to `ios/plugins/AppodealExample/Deps` in this repo.
6. Copy into Deps only those deps listed in `ios/plugins/AppodealExample/appodeal_example.gdip`.

### Build Plugin

1. `cd ios/plugins`
2. `./build.sh`

### Export for iOS

1. Open Godot editor (3.4.2-stable)
2. Project > Export...
3. Select "iOS (Runnable)", and then "Export Project"
4. Place into an empty directory.

After some time (extracting Appodeal deps) the build will fail.

### Fixing the build

1. Open the generated .xcodeproj in XCode on Mac.
2. Press the folder "show the project navigator" button at the top left.
3. Half way down right-click "BugReportProject" folder > New File
4. Create a Swift file, call it "Dummy.swift", and when prompted select "Create Bridging Headers"
5. Press "BugReportProject" at the top of the left pane to open all build setting in the center pane.
6. Signing & Capabilties -> Selection a team from the dropdown and ensure automatic signing is enabled.
7. Build Settings -> Other Linker Options -> Enter "-ObjC" as a linker option.

### Build and run

1. Press the build button in XCode with an authorized iOS target device plugged in.
2. The app should open on the device.
3. Press the "Press Me" button. Observe that the count increments.
4. At the top of the screen there is a banner complaining that the Appodeal API key is incorrect. Click the banner.
5. Observe that the count increments, then a web browser opens. This is issue 56417.
