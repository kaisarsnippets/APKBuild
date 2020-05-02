# APK build
A starter package to compile apps in Termux (Or any other GNU/Linux cli)

# Termux based
I've built this package thinking mainly in compile Android apps in Termux, so, the examples and guides are based on it.

# Dependencies
```
# Install dependencies
pkg install aapt apksigner dx ecj

# If you're in LineageOS do:
# $ nano /data/data/com.termux/files/usr/bin/dalvikvm
# And comment the following lines:
  # export ANDROID_DATA=/data/data/com.termux/files/usr/var/android/
  # mkdir -p $ANDROID_DATA/dalvik-cache
```

# Next
Download this repo and modify its files as you want. After that you can compile it running build.sh.
The apk will be stored inside ./bin.

# Setting up icons
If you're troubled with launcher icons. You can use this awesome generator:
https://romannurik.github.io/AndroidAssetStudio/icons-launcher.html#foreground.type=clipart&foreground.clipart=adb&foreground.space.trim=1&foreground.space.pad=0.25&foreColor=rgb(255%2C%20255%2C%20255)&backColor=rgb(139%2C%20195%2C%2074)&crop=0&backgroundShape=square&effects=shadow&name=ic_launcher

# Compile and launch
Before you compile, make sure the "build.sh" file has your desired target sdk version number. 
Search for it where it says "--target-sdk-version".

You can compile, install and launch the app using the script launch.sh.
Before you use it make sure you have the tsu package installed:
```
pkg install tsu
```
Now, edit the launch.sh file and replace the package name 'com.company.dummy'.
After that you can execute the script as many times you want.
```
sh launch.sh
```
