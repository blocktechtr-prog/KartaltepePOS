# Telefondan APK oluşturma

Bu yöntem bilgisayar gerektirmez. Code Studio yalnızca dosyaları düzenlemek için kullanılır; APK'yı GitHub sunucusu derler.

## 1. GitHub deposu açın

1. Telefon tarayıcısından GitHub'a giriş yapın.
2. **New repository** seçeneğine dokunun.
3. Depo adını `KartaltepePOS` yapın.
4. **Public** veya **Private** seçebilirsiniz.
5. **Create repository** ile oluşturun.

## 2. ZIP içeriğini yükleyin

ZIP'i telefonunuzda çıkartın. GitHub deposunda **Add file > Upload files** yolunu açıp tüm klasör içeriğini yükleyin.

Önemli: `.github/workflows/build-apk.yml` dosyası mutlaka yüklenmiş olmalıdır. Bazı telefon dosya yöneticileri `.github` gibi noktayla başlayan klasörleri gizleyebilir. Gizli dosyaları göster seçeneğini açın.

## 3. Derlemeyi başlatın

1. Depodaki **Actions** sekmesine girin.
2. Soldan **Android APK Oluştur** iş akışını seçin.
3. **Run workflow** düğmesine dokunun.
4. Tekrar **Run workflow** ile başlatın.

İlk derleme genellikle birkaç dakika sürer.

## 4. APK'yı indirin

1. Yeşil onay işaretli derleme kaydını açın.
2. Sayfanın altındaki **Artifacts** bölümüne inin.
3. **Kartaltepe-POS-APK** dosyasını indirin.
4. İndirilen ZIP'i açın.
5. İçindeki `Kartaltepe-POS-v1.1-release.apk` dosyasını kurun.

Android kurulum izni isterse tarayıcı veya dosya yöneticisi için **Bilinmeyen uygulamaları yükle** iznini açın.

## Otomatik yeniden derleme

`main` veya `master` dalına her yeni dosya yüklediğinizde GitHub Actions yeni APK'yı otomatik oluşturur.

## Uygulama bilgileri

- Uygulama: Kartaltepe POS
- Site: `https://restoran.turkaix.com`
- Android paket kimliği: `com.turkaix.kartaltepepos`
- APK türü: Release
