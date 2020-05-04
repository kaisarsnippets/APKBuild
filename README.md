# APK build
A starter package to compile apps in Termux (Or any other GNU/Linux cli)

## Termux based
I've built this package thinking mainly in compile Android apps in Termux, so, the examples and guides are based on it.

## Dependencies
```
# Install dependencies
pkg install aapt apksigner dx ecj

# If you're in LineageOS do:
# $ nano /data/data/com.termux/files/usr/bin/dalvikvm
# And comment the following lines:
  # export ANDROID_DATA=/data/data/com.termux/files/usr/var/android/
  # mkdir -p $ANDROID_DATA/dalvik-cache
```

## Next
Download this repo and modify its files as you want. After that you can compile it running build.sh.
The apk will be stored inside ./app.

## Setting up icons
If you're troubled with launcher icons. You can use this awesome generator:
https://romannurik.github.io/AndroidAssetStudio/icons-launcher.html#foreground.type=clipart&foreground.clipart=adb&foreground.space.trim=1&foreground.space.pad=0.25&foreColor=rgb(255%2C%20255%2C%20255)&backColor=rgb(139%2C%20195%2C%2074)&crop=0&backgroundShape=square&effects=shadow&name=ic_launcher

## Change package name
The default setup comes with the name com.company.dummy
You must change the package name by the one you'll use in:
- ./AndroidManifest.xml.
- ./src/com/company/dummy/MainActivity.java.
And, of course, change the directories "./src/com/company/dummy" according to your package name.

## Compile
Before you compile, make sure the "build.sh" file has your desired target sdk version number. 
Search for it where it says "--target-sdk-version".
```
sh build.sh
```

## Compile and launch
In order to make development faster, the script "launch.sh" will compile, uninstall the last installation, then reinstall it and launch the new compiled app.
You'll need to change also the package name in it.
```
sh launch.sh
```

If you get the message INSTALL_FAILED_VERIFICATION_FAILURE, is because the Play Protect verification.
So, open Google Play, go to the menu "Play Protect" > "Settings" and uncheck "Scan apps with Play Protect".