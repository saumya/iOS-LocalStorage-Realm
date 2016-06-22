iOS storage with realm
============================
An experimentation to store data locally with [realm][1] Using Cocoapods.  

pod commands
```
pod init
pod install
```  

The pod file contains the following.
```
platform :ios, '9.0'
use_frameworks!
target 'LocalDataRealm' do
  pod 'RealmSwift', '~> 1.0'
  pod 'Alamofire', '~> 3.4'
  pod 'ORStackView', '~> 3.0'
  pod 'SwiftyJSON', '~> 2.3'
end
```  

Then use the XcodeWorkspace instead of project.














[1]: https://realm.io/

