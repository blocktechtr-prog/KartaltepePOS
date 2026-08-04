# Kartaltepe POS Android

Bu proje `https://restoran.turkaix.com` adresini Android WebView içinde açan, telefon ve tablet uyumlu Kartaltepe POS uygulamasıdır.

## Özellikler

- Tam ekran POS kullanımı
- Oturum ve çerez desteği
- Geri tuşu yönetimi
- İnternet kesintisi ekranı
- Dosya yükleme ve indirme
- Kamera/QR izin altyapısı
- Harici telefon, e-posta ve WhatsApp bağlantıları
- Android 7.0 ve üzeri destek
- Paket adı: `com.turkaix.kartaltepepos`

## APK oluşturma

1. Android Studio ile proje klasörünü açın.
2. Gradle senkronizasyonunun bitmesini bekleyin.
3. `Build > Build Bundle(s) / APK(s) > Build APK(s)` menüsünü seçin.
4. APK şu klasörde oluşur:
   `app/build/outputs/apk/debug/app-debug.apk`

## İmzalı APK

`Build > Generate Signed Bundle / APK > APK` yolunu izleyin. Yeni bir keystore oluşturun ve release sürümünü derleyin.

## Web adresini değiştirme

`app/src/main/java/com/turkaix/kartaltepepos/MainActivity.java` dosyasındaki `POS_URL` değerini değiştirin.
