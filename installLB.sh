#!/system/bin/sh
mount -o rw,remount /system

# bikin temp folder
mkdir /sdcard/tempLB/

#download apk dulu
curl -L https://www.dropbox.com/s/lizqmp4yas9yhje/AppDrawer.apk?dl=0 > /sdcard/tempLB/AppDrawer.apk 
curl -L https://www.dropbox.com/s/9mpev6cz7cnrgks/LeanbackLauncher.apk?dl=0 > /sdcard/tempLB/LeanbackLauncher.apk 

echo "----------------------"
echo "Installing ..........."
#install apk
#install leanback
cp /sdcard/tempLB/LeanbackLauncher.apk /system/priv-app/
chmod 644 /system/priv-app/LeanbackLauncher.apk

#install appdrawer
mkdir /system/app/AppDrawer/
cp /sdcard/tempLB/AppDrawer.apk /system/app/AppDrawer/
chmod 644 /system/app/AppDrawer/AppDrawer.apk

echo ""
echo "Clearing .........."
rm -rf /sdcard/tempLB/
#clear
#reboot
echo ""
echo "rebooting ....."
reboot