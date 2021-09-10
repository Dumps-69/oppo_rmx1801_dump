#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:35837208:74a761fe5f4fc11020ee5903bbc02fffe92baf8b; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:12797204:dc925520ae27419aed3cdea93bfe9cb61d013fc0 EMMC:/dev/block/bootdevice/by-name/recovery 74a761fe5f4fc11020ee5903bbc02fffe92baf8b 35837208 dc925520ae27419aed3cdea93bfe9cb61d013fc0:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
