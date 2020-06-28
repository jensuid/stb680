#!/system/bin/sh
mount -o rw,remount /system

# bikin temp folder
mkdir /sdcard/tempLB/

#download apk dulu
curl -L https://www.dropbox.com/s/lizqmp4yas9yhje/AppDrawer.apk?dl=0 > /sdcard/tempLB/AppDrawer.apk 
curl -L https://www.dropbox.com/s/9mpev6cz7cnrgks/LeanbackLauncher.apk?dl=0 > /sdcard/tempLB/LeanbackLauncher.apk 

#install apk
#install leanback
cp /sdcard/tempLB/LeanbackLauncher.apk /system/priv-app/
chmod 644 /system/priv-app/LeanbackLauncher.apk

#install appdrawer
mkdir /sdcard/tempLB/AppDrawer/
cp /sdcard/tempLB/AppDrawer.apk /system/app/AppDrawer/
chmod 644 /system/app/AppDrawer/AppDrawer.apk

rm -rf /sdcard/tempLB/
#clear
#reboot
reboot