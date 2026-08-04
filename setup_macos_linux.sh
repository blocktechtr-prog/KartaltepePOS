#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

if ! command -v flutter >/dev/null 2>&1; then
  echo "Flutter bulunamadı. Önce Flutter SDK kurun ve PATH'e ekleyin."
  exit 1
fi

cp lib/main.dart /tmp/kartaltepe_main.dart
cp pubspec.yaml /tmp/kartaltepe_pubspec.yaml
cp analysis_options.yaml /tmp/kartaltepe_analysis.yaml
flutter create --platforms=android --org com.turkaix --project-name kartaltepe_pos .
cp /tmp/kartaltepe_main.dart lib/main.dart
cp /tmp/kartaltepe_pubspec.yaml pubspec.yaml
cp /tmp/kartaltepe_analysis.yaml analysis_options.yaml
flutter pub get

MANIFEST="android/app/src/main/AndroidManifest.xml"
if ! grep -q 'android.permission.INTERNET' "$MANIFEST"; then
  sed -i.bak 's#<manifest xmlns:android="http://schemas.android.com/apk/res/android">#<manifest xmlns:android="http://schemas.android.com/apk/res/android">\
    <uses-permission android:name="android.permission.INTERNET" />#' "$MANIFEST"
fi

echo "Kurulum tamamlandı."
echo "Çalıştırma: flutter run"
echo "APK: flutter build apk --release"
