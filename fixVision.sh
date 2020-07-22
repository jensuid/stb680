#!/system/bin/sh
mount -o rw,remount /system

echo " Fixing Error Playback Aplikasi Vision+"
sed -i '/ro.product.device=pulpstone_hg680p/ c ro.product.device=p212' /system/build.prop
#clear
#reboot
echo ""
echo "rebooting ....."
reboot