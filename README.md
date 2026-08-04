# Kartaltepe POS Mobile — Flutter

Web adresi: `https://restoran.turkaix.com`

Paket kimliği: `com.turkaix.kartaltepe_pos`

## Özellikler

- Tam ekran mobil POS WebView
- JavaScript, çerez ve oturum desteği
- Site içi bağlantıları uygulamada açma
- Harici siteleri varsayılan tarayıcıya yönlendirme
- Telefon, e-posta, SMS ve WhatsApp bağlantıları
- Yükleme göstergesi
- Bağlantı hatasında tekrar deneme ekranı
- Android geri tuşu yönetimi
- Dikey ve yatay ekran desteği
- Telefon ve tablet uyumu

## VS Code ile kurulum — Windows

1. Flutter SDK, Android Studio/Android SDK ve VS Code Flutter eklentisini kurun.
2. Bu klasörü VS Code ile açın.
3. PowerShell terminalinde çalıştırın:

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\scripts\setup_windows.ps1
```

4. Telefonu USB ile bağlayıp geliştirici seçenekleri/USB hata ayıklamayı açın.
5. Test:

```powershell
flutter run
```

6. Release APK:

```powershell
flutter build apk --release
```

APK konumu:

```text
build/app/outputs/flutter-apk/app-release.apk
```

## Hızlı kontrol

```bash
flutter doctor
flutter devices
flutter analyze
```

## Uygulama adresini değiştirme

`lib/main.dart` dosyasındaki `startUrl` ve `allowedHost` sabitlerini düzenleyin.

## Release imzası

Bu proje ilk aşamada Flutter'ın standart Android imzalama yapısıyla derlenir. Google Play veya kalıcı dağıtım için kendi keystore dosyanızı oluşturup Android release signing ayarlarını uygulayın.
