#!/usr/bin/env bash
# Requires: Node 22+, JDK 21, Android SDK (ANDROID_HOME set, platform 36 + build-tools 36). Android Studio provides all of these.
set -euo pipefail
npm install
[ -d android ] || npx cap add android
npx cap sync android
# Ensure the Android SDK path is known to Gradle
[ -f android/local.properties ] || echo "sdk.dir=${ANDROID_HOME:-$HOME/Android/Sdk}" > android/local.properties
(cd android && chmod +x gradlew && ./gradlew assembleDebug)
mkdir -p dist && cp android/app/build/outputs/apk/debug/app-debug.apk dist/impostor-fc-debug.apk
echo "Done: dist/impostor-fc-debug.apk"
