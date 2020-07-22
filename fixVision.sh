#!/system/bin/sh
mount -o rw,remount /system

echo " Fixing Error Playback Aplikasi Vision+"
sed -i '/ro.product.device=pulpstone_hg680p/ c ro.product.device=p212' /system/build.prop
#clear oem crypto
mv /vendor/lib/liboemcrypto.so /vendor/lib/liboemcrypto.BYE
#reboot
echo ""
echo "rebooting ....."
reboot