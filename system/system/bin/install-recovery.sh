#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:49084e4c6030df4a1f607fbd144aedfd94f3d6d4; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:f149a625c576fe88b6ba3947cdcc9d411bc2ba2d EMMC:/dev/block/platform/bootdevice/by-name/recovery 49084e4c6030df4a1f607fbd144aedfd94f3d6d4 33554432 f149a625c576fe88b6ba3947cdcc9d411bc2ba2d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
