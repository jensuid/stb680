#!/system/bin/sh

#------------- define -------------

DirApp="/system/9191/app/"
DirSD="/storage/9D81-6E2F/b860h/apkset/staging/"
DirDataSD="/storage/9D81-6E2F/b860h/apkSet/settingHG/"
DirBackup="/sdcard/bak/"
DirUserApp="/sdcard/bak/app/"
DirAppFirst="/system/9191/first/"

DIR_PRIV="/system/priv-app/"
DIR_BAK_DATAAPP="/sdcard/bak/dataApk/"

 
ApkSystem="
 SquareHome=com.ss.squarehome2
 SkyRocketFly=com.charon.rocketfly
 QuickSupport_15.4.61=com.teamviewer.quicksupport.market
 minixpower=com.minix.power_selector
 tinylauncher=com.atomicadd.tinylauncher
";

delApk="
SpeedtestbyOokla_v4.4.11.apk
ButtonMapper_v1.29.apk
RadioIndonesia_v4.9.13.apk
VLC_v3.1.7.apk
AptoideTV_v5.0.3.apk
iFlix_v3.46.apk
";

copyApk="
Perfect_Player_1.5.8.apk
APKPure_3.17.9.apk
AptoideTV_5.1.1.apk
iflix_3.49.0.apk
Button_Mapper_1.40.apk
Link2SD.apk
Kodi_18.6.apk
Netflix_latest.apk
Octopus_5.3.5.apk
Speedtest_4.5.6.apk
Titanium_2016.apk
UseeTV_GO_590.apk
Viki_2.3.6.apk
Viu_1.0.92.apk
chrome.work.apk
cyberflix_3.2.2.apk
kidyt.new.apk
Popcorn_3.6.4.apk
mobdro_2.1.64.apk
";

userApp="
cloudTV.apk
Radio_Indonesia_4.11.0.apk
VLC_3.2.11.apk
v5live.apk
tvtap_2.5.apk
NF21_3.3.apk
nordVPN_4.12.5.apk
freeMovies_3.1.apk
ZalTV_1.2.5.apk
mkctv.apk
";
appFirst="
Perfect_Player_1.5.6.apk
";

delPKG="
  PulpstoneTvLauncher
  PulpstoneWizard
  PulpstoneMerahPutih
  pulpstone.atv.xx1lite
  com.danielgauci.tvboot
 ";
 
 disablePKG="
 ";
 
 APP_PERMISSIONS="
SquareHome=com.ss.squarehome2/STORAGE
SquareHome=com.ss.squarehome2/CALENDAR
YouTubeKids=com.liskovsoft.videomanager.kids/STORAGE
SmartYouTube=com.liskovsoft.videomanager/STORAGE
MXPlayer=com.mxtech.videoplayer.ad/STORAGE
PerfectPlayer=com.niklabs.pp/STORAGE
mobdro=com.mobdro.android/STORAGE
cyberflix=com.cybermedia.cyberflx/STORAGE
titanium=com.noname.titanium/STORAGE
NewCloudTV=com.cloudtv/STORAGE
NewCloudTV=com.cloudtv/PHONE
popcorn=dp.ws.popcorntime/STORAGE
liveNetTV=com.lnt.androidnettv/LOCATION
apkpure=com.apkpure.aegon/STORAGE
apkpure=com.apkpure.aegon/PHONE
MNCNow=com.zte.iptvclient.android.idmnc/PHONE
MNCNow=com.zte.iptvclient.android.idmnc/LOCATION
MNCNow=com.zte.iptvclient.android.idmnc/STORAGE
AptoideTV=cm.aptoidetv.pt/STORAGE
NF21=id.nf21.rbn1/STORAGE
NF21=id.nf21.rbn1/LOCATION
NF21=id.nf21.rbn1/CAMERA
";

#mnc tidak perlu re-pathing
#MNCNow=com.zte.iptvclient.android.idmnc/.mvp.main.MainActivity
#red box versi baru ganti nama pakcage
PKG_PATCHING="
SquareHome=com.ss.squarehome2/None
PerfectPlayer=com.niklabs.pp/com.niklabs.perfectplayer.MainActivity
V5live=com.eletech.fastv/com.cloudtv.anyview.LoadingActivity
RedboxTV=com.redstream.app/.activities.SplashActivity
cyberflix=com.cybermedia.cyberflx/com.cybermedia.cyberflix.ui.activity.HomeActivity
titanium=com.noname.titanium/.ui.activity.HomeActivity
LiveNetTV=com.core.lntmobile/.activities.SplashActivity
SmartYouTube=com.liskovsoft.videomanager/com.liskovsoft.smartyoutubetv.flavors.xwalk.SmartYouTubeTV1080AltActivity
YouTubeKids=com.liskovsoft.videomanager.kids/com.liskovsoft.smartyoutubetv.flavors.xwalk.SmartYouTubeTV1080AltActivity
MNCNow=com.zte.iptvclient.android.idmnc/.mvp.splashscreenv2.SplashScreenActivity
NF21mkctv=com.fikrul.mkctv/.presentation.view.activity.StartupActivity=id.nf21.rbn1/.activities.Splash
ZalTV=com.player.zaltv/.presentation.view.activity.StartupActivity
";

PKG_TEST="
SmartYouTube=com.liskovsoft.videomanager/com.liskovsoft.smartyoutubetv.flavors.xwalk.SmartYouTubeTV1080AltActivity
nobi21=com.nobi21/.MainActivity
PerfectPlayer=com.niklabs.pp/com.niklabs.perfectplayer.MainActivity
netflix=com.netflix.mediaclient/.ui.launch.LaunchActivity
popcorn=dp.ws.popcorntime/se.popcorn_time.mobile.ui.MainActivity
viki=com.viki.android/.MainActivity
xx1lite=com.xx1.lite/.MainActivity 
mobdro=com.mobdro.android/com.mobdro.tv.TVActivity
YouTubeKids=com.liskovsoft.videomanager.kids/com.liskovsoft.smartyoutubetv.flavors.xwalk.SmartYouTubeTV1080AltActivity
cyberflix=com.cybermedia.cyberflx/com.cybermedia.cyberflix.ui.activity.HomeActivity
titanium=com.noname.titanium/.ui.activity.HomeActivity
iflix= iflix.play/my.com.iflix.mobile.ui.SplashActivity
hooq=tv.hooq.android/tv.hooq.androidbeta.features.launcher.SplashActivity
dutafilm=com.dutafilm.pulpstone/.MainActivity
ZalTV=com.player.zaltv/.presentation.view.activity.StartupActivity
V5live=com.eletech.fastv/com.cloudtv.anyview.LoadingActivity
RedboxTV=com.rbstreams.red/.activities.SplashTvActivity
liveNetTV=com.lnt.androidnettv/.MainActivity 
NewCloudTV=com.cloudtv/.ui.splash.SplashActivity
MNCNow=com.zte.iptvclient.android.idmnc/.mvp.main.MainActivity
useetvgo=com.nbs.useetv/.ui.SplashscreenActivity
vidio=com.vidio.android.tv/.home.MainActivity
onnetv=com.onecode.tvindonesiatanpabuffer/.MainActivity
radio=com.worldradios.indonesie/.MainActivity
adaway=org.adaway/.ui.MainActivity
apkpure=com.apkpure.aegon/.main.activity.SplashActivity
";

# ---------------Function ---------------------
# action package

doActionPackage(){
   line=$(pm list package -f | grep -i $1)
     # check only when ready
    if [  -z $line ] 
       then
          echo "No Package $1"
	   else
	      result=${line:8}
          fileApk=${result%=*}
          namaPkg=${result#*=}
   
		  echo "do -> pm disable $namaPkg"
		  pm disable $namaPkg
		  if [ $2 == "delete" ];then
		      echo "do--> rm -rf $fileApk"
			  rm -rf $fileApk
		  fi
    fi
 }
 
 doDisableAppPW(){
  for str in $delPKG; do
      doActionPackage $str "delete"
  done
  
  for str in $disablePKG; do
      doActionPackage $str "disable"
  done
  
  # delete live channel
  pm disable com.google.android.tv
  rm -rf /system/priv-app/AndroidTV
  rm -rf /data/data/com.google.android.tv
  
  pm disable by.stari4ek.tvirl
  rm -rf /system/app/TVirl.apk
  rm -rf /data/data/by.stari4ek.tvirl

}

# delete apk di 9191 yg tidak di pakai
doDelApk(){
  for iapk in $delApk; do
      echo "do --> rm $DirApp$iapk"
	  rm $DirApp$iapk
  done
}

# copy file apk dari sdcard /usb ke 9191
doCopyApk(){
  for iapk in $copyApk; do
      echo "do --> cp $DirSD$iapk $DirApp"
	  cp $DirSD$iapk $DirApp
  done
}

# copy file apk dari utk install awal
doInstallApkFirst(){
  #create dir app/first
  mkdir $DirAppFirst
  for iapk in $appFirst; do
      echo "do --> cp $DirSD$iapk $DirAppFirst"
	  cp $DirSD$iapk $DirAppFirst
	 
	  #install 
	  echo "Installing file : $DirAppFirst$iapk" 
	  pm install -r $DirAppFirst$iapk 
	  
	  #delete file
	  #rm $DirApp$iapk 
  done
  
  # del app source first
  rm -rf $DirAppFirst
}

doInstalawal(){
   #create dir app/first
   mkdir $DirAppFirst
   for iapk in $appFirst; do
      echo "do --> cp $DirSD$iapk $DirAppFirst"
	  cp $DirSD$iapk $DirAppFirst
   done
   
   #change permission
   echo "chmod 777 $DirAppFirst*"
   chmod  777 /system/9191/first/*
   #install
   busybox find $DirAppFirst -name "*\.apk" -exec sh /system/bin/pm install -r {} \;
   #remove 
   echo rm -rf $DirAppFirst
}

# copy data setting apk dari sdcard ke internal

doCopyDataApk(){
  # copy ke internal
  echo "do --> cp -r $DirDataSD bak/  /sdcard/"
  cp -r $DirDataSD"bak/"  /sdcard/
  
  # copy kode aktivasi ke internal
  echo "do --> mv /sdcard/Download/Kode_Aktivasi.txt $DirBackup"
  mv /sdcard/Download/Kode_Aktivasi.txt $DirBackup
  
  #copy ke system biar tidak kehapus
  echo "do -->  cp -r /sdcard/bak/ /system/"
  #cp -r $DirBackup /system/
  
  echo "do -->  cp -r $DirDataSD dataApk/  $DirBackup"
  cp -r $DirDataSD"dataApk/"  $DirBackup
  
  #copy script 680 setup ke /system/bin
  #cp $DirBackup"hgSetup.sh" /system/bin/680
  #set permission
  
  # inect script 680
  cp /sdcard/hgSetup.sh /system/bin/680
  chmod 755 /system/bin/680
}


# setting tampilan boot , logo dan wallpaper
doSettingDisplay(){
  #  bootanimation
  echo "do --> mv /system/media/bootanimation.zip /system/media/bootanimation.bak"
  mv /system/media/bootanimation.zip /system/media/bootanimation.bak
  
  echo "do --> cp  $DirDataSD bak/bootanimation.zip  /system/media/"
  cp  $DirDataSD"bak/bootanimation.zip"  /system/media/
  
  echo "do --> chmod 755 /system/media/bootanimation.zip"
  chmod 755 /system/media/bootanimation.zip
  
  # replace bootvide0
  echo ---- change bootvideo --------
  #mv /system/media/bootanimation.zip /system/media/bootanimation.bak
  cp  /sdcard/bak/bootvideo /system/etc/
  #chmod 755 /system/etc/bootvideo
  echo
  
  #logo
  
  # wallpaper

}

# install ke system
doI2Sys(){
 #param $1 file apk $2 nama package
 #mkdir nama package di priv/app/
  echo "mkdir $DIR_PRIV$2/"
  mkdir $DIR_PRIV$2"/"
  
 #mkir lib to
  echo "mkdir $DIR_PRIV$2/lib/" 
  mkdir $DIR_PRIV$2"/lib/" 
  
 #copy apk to dir priv-app/
  echo "cp $DirSD$1.apk $DIR_PRIV$2/base.apk"
  cp $DirSD$1".apk" $DIR_PRIV$2"/base.apk"
  
 # set permission
  echo "chmod -R 755 $DIR_PRIV$2/"
  chmod -R 755 $DIR_PRIV$2"/"
  
  echo "chmod 644 $DIR_PRIV$2/base.apk"
  chmod 644 $DIR_PRIV$2"/base.apk"
}

doInstallAppSystem(){
 for str in $ApkSystem; do
   fileApp=${str%=*}
   namaPkg=${str#*=}
   echo "Installing app: $fileApp | package: $namaPkg"
   doI2Sys $fileApp $namaPkg
   echo
 done
}

doCopyUserApp(){
  for iapk in $userApp; do
      echo "do --> cp $DirSD$iapk $DirUserApp"
	  cp $DirSD$iapk $DirUserApp
  done
}

doInstallUserApp(){
  #create dir app/first
  mkdir $DirUserApp
  for iapk in $userApp; do
	  #install 
	  echo "Installing file : $DirUserApp$iapk" 
	  pm install -r $DirUserApp$iapk 
	  
	  #delete file
	  rm $DirUserApp$iapk 
  done

}

 doPrepareSetup(){
    doDelApk
	doInstallAppSystem
	
	#----fix install apk awal
	#doInstallApkFirst
	doInstalawal
	doCopyApk
	doCopyDataApk
	doCopyUserApp
	doSettingDisplay
	doGrantPermissionGMS
	doGrantPermissionDejavu
  }
  
  doInitApk1(){
  echo -------- Init apk spy bisa diinject data  --------------
  #mount -o rw,remount /system

   echo ---   mx player
   am start -n com.mxtech.videoplayer.ad/.ActivityWelcomeMX
   sleep 5
   am force-stop com.mxtech.videoplayer.ad

    echo ----- v5live
    am start -n com.eletech.fastv/com.cloudtv.anyview.LoadingActivity
    sleep 5
    am force-stop com.eletech.fastv

    echo ---- zal TV
    am start -n com.player.zaltv/.presentation.view.activity.StartupActivity
    sleep 5
    am force-stop com.player.zaltv
    echo redbox
    am start -n com.redbox.tv/.MainActivity
    sleep 5
    am force-stop com.redbox.tv
  }
  
  # ------------add 14 okt 2019 ----------------
  # init app
  doOpenCloseApp(){
  if [ -z $1]; then 
      echo "No App"
  else
      am start -n $1"/"$2
	  if [ $? = 0 ]; then
         sleep 3
         am force-stop $1
	  fi
  fi
 }
 
 #inject data privat app /data/data
 doInjectAppData(){
   # pass parameter ar1 package arg2 dirdata
   # get user owner /data/data/package
   if [ -d /data/data/$1 ]; then
     uid=${ stat -c %U /data/data/$1 }  
   
   # copy app data ke privat data
     if [ -e $DIR_BAK_DATAAPP$1 ]; then
        cp -r $DIR_BAK_DATAAPP$1 /data/data/
       
    	# ubah ownership
        appdata="/data/data/"$1
        chown $uid -R $appdata
		
		# delete source
		rm -r $DIR_BAK_DATAAPP$1
	 fi
  else
	  echo "Package $1 Tidak Ada - No Patching"
  fi
 }
 doPatchingApp(){
    for line in $PKG_PATCHING; do
       app=${line%=*}
	   descApp=${line#*=}
	   # pkg dan activity
	   pkg=${descApp%/*}
	   activity=${descApp#*/}
	   
	   # unit
	   echo "   starting $app : $pkg - $activity"
	   doOpenCloseApp $pkg $activity
	   
	   
	   # inject private data
	   echo "   patching ...$app"
       doInjectAppData $pkg $DIR_BAK_DATAAPP
	
    done
 }
 
 doPatchingMNCNow(){
   fileData="/sdcard/dataApk/com.zte.iptvclient.android.idmnc/shared_prefs/user_session.xml"
   uid=${ stat -c %U $fileData }  
   cp  $fileData /data/data/com.zte.iptvclient.android.idmnc/shared_prefs/
   chown $uid /data/data/com.zte.iptvclient.android.idmnc/shared_prefs/user_session.xml
   
   #reboot
 }
 
  doGrantPermission(){
    #paramater type permission $1 package $2 permission
	if [ -n $1 ]; then
	    case $2 in
	   "STORAGE") echo " Grant $2 to $1"
	              pm grant $1 android.permission.READ_EXTERNAL_STORAGE
				  pm grant $1 android.permission.WRITE_EXTERNAL_STORAGE
	        ;;
	  "LOCATION") echo " Grant $2 to $1"
	              pm grant $1 android.permission.ACCESS_FINE_LOCATION
				  pm grant $1 android.permission.ACCESS_COARSE_LOCATION
		    ;;
	  "CALENDAR") echo " Grant $2 to $1"
	              pm grant $1 android.permission.READ_CALENDAR
				  #pm grant $1 android.permission.WRITE_CALENDAR
		    ;;	
	     "PHONE") echo " Grant $2 to $1"
	              #pm grant $1 android.permission.READ_CALL_LOG
				  pm grant $1 android.permission.READ_PHONE_STATE
				  #pm grant $1 android.permission.CALL_PHONE
				  #pm grant $1 android.permission.WRITE_CALL_LOG
				  #pm grant $1 android.permission.USE_SIP
				  #pm grant $1 android.permission.PROCESS_OUTGOING_CALLS
				  #pm grant $1 com.android.voicemail.permission.ADD_VOICEMAIL
		    ;;	
	   "CAMERA") echo " Grant $2 to $1"
	              pm grant $1 android.permission.CAMERA
				  #pm grant $1 android.permission.WRITE_CALENDAR
		    ;;		
	   "CONTACT") echo " Grant $2 to $1"
	              pm grant $1 android.permission.GET_ACCOUNTS
				  	
	    esac
	fi
  }
  
 # grant app permisison 
 doGrantAllApp(){
    for str in $APP_PERMISSIONS; do
       app=${str%=*}
	   descApp=${str#*=}
	   # pkg dan activity
	   pkg=${descApp%/*}
	   perm=${descApp#*/}
	   
	   # init
	   # check packagenya 
	   exist=$(pm list package | grep -i $pkg)
	   if [ ${#exist} -gt 1 ]; then
		  doGrantPermission $pkg $perm
	   fi
   done 
 }
 
 # ----testing running aplikasi
  doTestingAllApp(){
    for str in $PKG_TEST; do
       app=${str%=*}
	   actApp=${str#*=}
	   pkg=${actApp%/*}
	  
	  # open dan close app
	   am start -n $actApp
       sleep 20
      am force-stop $pkg
   done 
 } 
 
 doChangeWallpaper(){
  echo ---- change wallpaper --------
  cp /sdcard/bak/default_wallpaper.png /data/system/users/0/wallpaper
  chmod 770 /data/system/users/0/wallpaper
  chown system:system /data/system/users/0/wallpaper
  echo
 }
 
 # --- preparing gms 
 doGrantPermissionGMS(){
   pm grant com.google.android.gms android.permission.READ_PHONE_STATE
   pm grant com.google.android.gms android.permission.WRITE_EXTERNAL_STORAGE
   pm grant com.google.android.gms android.permission.READ_EXTERNAL_STORAGE
   pm grant com.google.android.gms android.permission.ACCESS_FINE_LOCATION
   pm grant com.google.android.gms android.permission.ACCESS_COARSE_LOCATION
   pm grant com.google.android.gms android.permission.GET_ACCOUNTS
 }
 
 doGrantPermissionDejavu(){
 pm grant org.fitchfamily.android.dejavu android.permission.ACCESS_FINE_LOCATION
 pm grant org.fitchfamily.android.dejavu android.permission.ACCESS_COARSE_LOCATION
 }
 
 doCheckGMS(){
   # buka GMS
     am start -n com.google.android.gms/org.microg.gms.ui.SettingsActivity
   # lakukan enable 
 }
 doCheckPS(){
   # buka playstore
     am start -n com.android.vending/.AssetBrowserActivity
   # lakukan sign
 }
 
 doDisableBootVideo(){
  sed -i '/service.bootvideo=1/ c service.bootvideo=0' /system/build.prop
 }
 
 # finishing after do command 9191
 Finishing(){
   # install dulu user app
   doInstallUserApp
   doGrantAllApp
   doPatchingApp
   # do cosmetic
   doChangeWallpaper
   doDisableAppPW
   doDisableBootVideo
 
 }

#---------- recomend menu--------
# 1. prepare ( copy , intall system )
# 2. install apk
# 3. inject data setting
# 4. finishing dan testing
 showMenu(){
  clear
  echo "------ Setup STB Fiberhome HG680p ------------"
  echo
  echo "Action :"
  echo 
  echo "[10] Prepare file setup"
  echo "[20] Install app"
  echo "[30] Finishing"
  echo "[40] Testing Running App"
  echo "--------------------------------"
  echo "[99] exit"
  echo "[90] reboot"
  echo " -------------------------------"
  echo "[50] Hapus app bawaan pulpstone"
  echo "[60] Patching MNC Now"
  echo "[111] Program Test"
  echo 
  echo
  #read -p " Pilihan anda : " menu
  
  #return $menu
 }
 

#-------------  Main -------------------------
echo -------- Preparation HG 680 --------------
echo
mount -o rw,remount /system

  # test menu
  inputMenu="00"
  while [ [$inputMenu != "99"] ]
  do
     showMenu
	 echo " Pilihan anda :"
	 read  inputMenu
	 
     # pilihan action
	 case $inputMenu in
	   "10") clear
	         echo "-------------------"
	         echo " Prepare File Setup"
			 doPrepareSetup
			 doCheckGMS
			 echo " Pastikan setting GMS enable "
			 echo " Press Enter continue "
			 read p
			 echo " Rebooting ....."
			 reboot
			 #exit 1
	        ;;
	   "20") clear
	         doCheckGMS
			  echo " Press Enter continue "
			 read p
			 doCheckPS
			 echo " Sign in Playstore "
			 echo " Press Enter continue "
			 read p
	         echo " Installing App........"
	          echo 1 | 9191
			 ;;
	   "30") clear
	         echo " Finishing "
			      Finishing
				  echo " rebooting ......"
				  sleep 2
				  reboot
	         ;;
	   "40") clear
	         echo " Testing Running Application"
			      doTestingAllApp
	         ;;	 
	   "50") clear
	         echo " Hapus app bawaan yang tidak dipakai"
	         doDisableAppPW
	         ;;
	   "60") clear
	         echo " Patching MNC Now"
	         doPatchingMNCNow
	         ;;	 
	   "99") echo " Exiting ......"
	         exit 
	         ;;
	   "111") echo " Test......install awal"
	        doInstalawal
	         exit 
	         ;;	 
	   esac 
done
 
 




