#!/bin/bash

# Bash script dosyası: revert_patches.sh

# Patch dosyalarını geri alma
echo "Patch dosyaları geri alınıyor..."

# .patch dosyalarını geri alma
for patch_file in *.patch; do
    echo "Geri alınıyor: $patch_file"
    git apply -R "$patch_file" || { echo "Patch geri alma hatası: $patch_file"; exit 1; }
done

echo "Patch dosyaları başarıyla geri alındı."


echo "Copyalanan dosyalar siliniyor..."

rm -rf ../../../../frameworks/base/data/etc/car/com.android.car.mccarlauncher.xml
rm -rf ../../../../device/generic/car/mc_car_x86.mk

echo "İşlem tamamlandı."

