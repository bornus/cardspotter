cp -f manifest_ff.json MagicCardSpotter/manifest.json
VERSION=`cat VERSION.txt`
sed -i "s/VERSION/${VERSION}/g" MagicCardSpotter/manifest.json
echo Packing Firefox ${VERSION}
rm -fv "MagicCardSpotterFirefox${VERSION}.zip"
cd MagicCardSpotter
zip -r "../MagicCardSpotterFirefox${VERSION}.zip" *
cd ..
