#!/bin/bash

# Bash script dosyası: mcdevice_install.sh


# Patch dosyalarını uygulama
echo "Patch dosyaları uygulanıyor..."

# .patch dosyalarını uygulama
for patch_file in *.patch; do
    echo "Uygulama: $patch_file"
    git apply "$patch_file" || { echo "Patch uygulama hatası: $patch_file"; exit 1; }
done

echo "Patch dosyaları başarıyla uygulandı."


echo "Diğer dosyalar işleniyor..."

# XML ve MK dosyalarını belirli bir yere kopyalama
cp com.android.car.mccarlauncher.xml ../../../../frameworks/base/data/etc/car/
cp mc_car_x86.mk ../../../../device/generic/car/

echo "İşlem tamamlandı."

