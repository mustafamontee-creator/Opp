# Impostor FC – Android (Capacitor)

## Option A: GitHub (no local setup, free)
1. Create a new GitHub repo and push this folder to `main`.
2. Open Actions → "Build APK" → Run workflow (it also runs on every push).
3. Download the `impostor-fc-apk` artifact → unzip → `app-debug.apk`.

## Option B: your machine
Install Android Studio (gives JDK 21 + SDK), Node 20+, then: `./build.sh`
Output: `dist/impostor-fc-debug.apk`

## Install on a phone
Copy the APK to the phone → open it → allow "install unknown apps" for your file manager/browser.
The debug APK is signed with a debug key: fine for testing, not for the Play Store.
