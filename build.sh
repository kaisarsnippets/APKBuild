if ( ! -d 'assets') then
	mkdir 'assets';
fi
if ( ! -d 'obj') then
	mkdir 'obj';
fi
if ( ! -d 'bin') then
	mkdir 'bin';
fi
echo "Start package.";
aapt package -v -f \
    -M $(find . -type f -name "AndroidManifest.xml") \
    -J $(find . -type d -name src) \
    -S $(find . -type d -name res);
echo "Compile java sources.";
ecj -d ./obj -sourcepath . $(find . -type f -name "*.java");
echo "Generate dex files.";
dx --dex --verbose --output=./bin/classes.dex ./obj;
echo 'Compile apk.';
aapt package -v -f \
	--min-sdk-version 1 \
	--target-sdk-version 999999999 \
    -M ./AndroidManifest.xml \
    -S ./res \
    -A ./assets \
    -F bin/tmp.apk;
echo 'Append dex to apk.';
cd bin;
aapt add -f tmp.apk classes.dex;
echo "Sign apk.";
apksigner debug.key tmp.apk app.apk;
echo "Clean tmp.";
rm tmp.apk;
rm classes.dex;
rm debug.key;
echo "Finished!";key;
echo "Finished!";