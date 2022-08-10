## Update if needed texture SPM version

`git clone git@github.com:Nuglif/texture-spm.git`

`carthage update --use-xcframeworks --platform ios`

An error appear with PINRemoteImage because PINOperation, PINCache and libwebp missing.

`open Carthage/Checkouts/PINRemoteImage/PINRemoteImage.xcodeproj`

Then go to General > Frameworks and Librairies tab and remove current PINOperation.framework, PINCache.framework and both 
WebDecoder.framwork

After that link created xcframework inside Carthage/Build folder 
 - PINOperation.xcframework
 - PINCache.xcframework
 - libwebp.xcframework

And at the end

`carthage build --use-xcframeworks --platform ios`

> Warning: if you launch update command instead, you are welcom to remake all this tutorial :)
