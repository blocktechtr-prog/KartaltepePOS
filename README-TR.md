# Kartaltepe POS Android

Bu proje `https://restoran.turkaix.com` adresini Android WebView içinde açar.

## Telefondan APK oluşturma

1. Bu ZIP dosyasını telefonda çıkartın.
2. GitHub deposundaki eski dosyaları silin.
3. ZIP içindeki dosya ve klasörleri depo ana dizinine yükleyin.
4. GitHub'da **Actions > Android APK Oluştur > Run workflow** yolunu açın.
5. İşlem yeşil olduğunda çalışmaya girin.
6. Sayfanın altındaki **Artifacts > Kartaltepe-POS-APK** dosyasını indirin.
7. İndirilen artifact ZIP'ini açın; içinde `app-debug.apk` bulunur.

## Depo kökünde görünmesi gerekenler

- `.github/workflows/android.yml`
- `app/`
- `build.gradle`
- `settings.gradle`
- `gradle.properties`

`AndroidManifest.xml` veya `MainActivity.java` depo kökünde tek başına durmamalıdır; bunlar `app/src/main/...` dizinlerinde bulunmalıdır.
