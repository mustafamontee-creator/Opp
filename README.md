# Impostor FC – Android (Capacitor)

## Option A: GitHub (no local setup, free)
1. Create a new GitHub repo and push this folder to `main`.
2. Open Actions → "Build APK" → Run workflow (it also runs on every push).
3. Download the `impostor-fc-apk` artifact → unzip → `app-debug.apk`.

## Option B: your machine
Install Android Studio (gives JDK 21 + SDK), Node 22+, then: `./build.sh`
Output: `dist/impostor-fc-debug.apk`

## Install on a phone
Copy the APK to the phone → open it → allow "install unknown apps" for your file manager/browser.
The debug APK is signed with a debug key: fine for testing, not for the Play Store.

## Troubleshooting: "Get Impostor Football from Google Play"
That message is not produced by this project (no Play licensing/installer code, no native code of its own).
Check what is actually installed: Settings → Apps → app info. This app is "المحتال FC", package `com.impostorfc.game`.
If the package is different, you installed another APK (e.g. the original game). Uninstall it and install `app-debug.apk` from the "impostor-fc-apk" artifact.
The workflow also fails the build if the APK's package id is not `com.impostorfc.game`.
