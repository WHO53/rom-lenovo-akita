#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:95faa62d84856eba77d944d6a5e0758d0ab7ca20; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:6305018872275606002b3a517de2d74f4c3eb113 \
          --target EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:95faa62d84856eba77d944d6a5e0758d0ab7ca20 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
