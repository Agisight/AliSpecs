Pod::Spec.new do |s|
  s.name         = 'CTMobile'
  s.version      = '2.2.3.Pernod'
  s.summary      = 'The New CT Mobile'
  s.homepage     = 'https://github.com/CT-Software/The-New-CT-Mobile'
  s.license      = 'MIT'
  s.author       = { 'gtarasov' => 'gleb34@gmail.com' }
  s.source       = { :git => 'https://github.com/CT-Software/The-New-CT-Mobile.git', :branch => '2.2.Pernod', :tag => s.version }
  s.platform     = :ios, '11.0'
  s.requires_arc = true

  s.subspec 'Utils' do |utils|
    utils.source_files = 'Utils/Utils/*.{h,m,mm,swift}'
    utils.exclude_files = '**/main.m'
    utils.dependency 'BlocksKit', '2.2.5'
    utils.dependency 'FrameAccessor', '2.0.1'
    utils.dependency 'DateTools', '2.0.0'
    utils.dependency 'ClosureKit', '1.0.0'
  
  end

  s.subspec 'Synchronization' do |synchr|
    synchr.source_files = 'Synchronization/Synchronization/**/*.{h,m,mm,swift}'
    synchr.exclude_files = '**/main.m'
    synchr.resources    = 'Synchronization/Synchronization/**/*.{storyboard,png,pdf,xib,bundle}'

    synchr.dependency 'CTMobile/Utils'
    synchr.dependency 'ZKSforce', '~> 38.0.2.8'
    synchr.dependency 'MagicalRecord', '2.3.2'
    synchr.dependency 'SAMKeychain', '1.5.3'
    synchr.dependency 'CBLParseDate', '0.0.1'
    synchr.dependency 'DDMathParser', '1.2.0'
    synchr.dependency 'DFCache', '4.0.2'
    synchr.dependency 'objective-zip', '1.0.3'
    synchr.dependency 'AFNetworking-Synchronous/3.x'

    synchr.frameworks = 'CoreData'
    synchr.library = 'xml2', 'sqlite3'
    synchr.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }

  end

  s.subspec 'Core' do |core|
    core.source_files = 'CTMobile.h', 'Core/Core/**/*.{h,m,mm,swift}', "vendored/Crashlytics.framework/Headers/*.h", "vendored/Fabric.framework/Headers/*.h",
    "vendored/GoogleAppMeasurement.framework/Headers/*.h", "vendored/FirebaseAnalytics.framework/Headers/*.h", "vendored/FirebaseCore.framework/Headers/*.h", "vendored/FirebaseInstanceID.framework/Headers/*.h",  
    "vendored/GoogleUtilities.framework/Headers/*.h"
    core.exclude_files = '**/main.m'
    core.resources    = 'Core/Core/**/*.{storyboard,png,pdf,xib,bundle,plist,js,xcassets}'
    core.frameworks = 'MapKit', 'ImageIO', 'Accelerate', "StoreKit"
    core.vendored_frameworks = "vendored/Crashlytics.framework", "vendored/Fabric.framework",
    "vendored/FIRAnalyticsConnector.framework", "vendored/GoogleAppMeasurement.framework", "vendored/FirebaseAnalytics.framework", "vendored/FirebaseCore.framework",
    "vendored/FirebaseCoreDiagnostics.framework", "vendored/FirebaseInstanceID.framework", "vendored/GoogleUtilities.framework"
    core.public_header_files = 'CTMobile.h', "Core/Core/**/*.h", "vendored/Crashlytics.framework/Headers/*.h", "vendored/Fabric.framework/Headers/*.h",
    "vendored/GoogleAppMeasurement.framework/Headers/*.h", "vendored/FirebaseAnalytics.framework/Headers/*.h", "vendored/FirebaseCore.framework/Headers/*.h", 
    "vendored/FirebaseInstanceID.framework/Headers/*.h", "vendored/GoogleUtilities.framework/Headers/*.h"
    core.libraries = "c++", "z"

    core.dependency 'CTMobile/Utils'
    core.dependency 'CTMobile/Synchronization'
    core.dependency 'TPKeyboardAvoiding', '1.3.3'
    core.dependency 'CT-RDVTabBarController'
    core.dependency 'TOWebViewController', '2.2.8'
    core.dependency 'Masonry', '1.1.0'
    core.dependency 'ZipArchive', '1.4.0'
    core.dependency 'JGProgressHUD', '2.0.3'
    core.dependency 'ALAssetsLibrary-CustomPhotoAlbum', '1.3.4'
    core.dependency 'SWRevealViewController', '2.3.0'
    core.dependency 'RSBarcodes', '0.1.4'
    core.dependency 'ASValueTrackingSlider', '0.12.1'
    core.dependency 'Charts', '3.4.0'
    core.dependency 'WMGaugeView', '0.0.7'
    core.dependency 'UITextView+Placeholder', '1.4.0'
    core.dependency 'DTTJailbreakDetection', '0.4.0'
    core.dependency 'CommonCryptoModule', '1.0.2'
    core.dependency 'GCDWebServer', '3.5.4'
    core.dependency 'TZImagePickerController'
    core.dependency 'SnapKit', '5.0.1'
    core.dependency 'nanopb', '0.3.9011'
  end

  s.subspec 'Contact' do |contact|
    contact.source_files = 'Contact/Contact/**/*.{h,m,mm,swift}'
    contact.exclude_files = '**/main.m'
    contact.resources    = 'Contact/Contact/**/*.{storyboard,bundle}'

    contact.dependency 'CTMobile/Core'
  end

  s.subspec 'Visit' do |visit|
    visit.source_files = 'Visit/Visit/**/*.{h,m,mm,swift}'
    visit.exclude_files = '**/main.m'
    visit.resources    = 'Visit/Visit/**/*.{storyboard,png,pdf,xib,bundle}'

    visit.dependency 'CTMobile/Core'
  end

  s.subspec 'Account' do |account|
    account.source_files = 'Account/Account/**/*.{h,m,mm,swift}'
    account.exclude_files = '**/main.m'
    account.resources    = 'Account/Account/**/*.{storyboard,png,pdf,xib,bundle}'
    account.framework    = 'MapKit'
    account.public_header_files = 'Account/Account/**/*.h'

    account.dependency 'CTMobile/Routes'
  end

  s.subspec 'Calendar' do |calendar|
    calendar.source_files = 'Calendar/Calendar/**/*.{h,m,mm,swift}'
    calendar.exclude_files = '**/main.m'
    calendar.resources    = 'Calendar/Calendar/**/*.{storyboard,png,pdf,xib,bundle}'

    calendar.dependency 'CTMobile/Core'
  end

  s.subspec 'Application' do |app|
    app.source_files = 'Application/Application/**/*.{h,m,mm,swift}'
    app.exclude_files = '**/main.m'
    app.resources    = 'Application/Application/**/*.{storyboard,png,pdf,xib,bundle,xcassets}'

    app.dependency 'CTMobile/Core'
    app.dependency 'iCarousel', '1.8.3'
    app.dependency 'XCDYouTubeKit', '2.9.0'
    app.dependency 'iOS-htmltopdf', '2.1.0'
    app.dependency 'WebViewJavascriptBridge', '6.0.3'
    app.dependency 'hpple', '0.2.0'
    app.dependency 'QRCodeReaderViewController', '4.0.2'

    app.framework    = 'MultipeerConnectivity'
  end

 s.subspec 'Routes' do |routes|
    routes.source_files = 'Routes/Routes/**/*.{h,m,mm,swift}', 'vendored/GoogleMaps.framework/Headers/*.h'
    routes.exclude_files = '**/main.m'
    # скрываем хедеры, которые включают GoogleMaps, иначе не собирается Sample
    routes.private_header_files = 'Routes/Routes/CCMapVC+CRGoogleMapsBasics.h', 'Routes/Routes/CRAppleMapsBasics_h.h'
    routes.resources    = 'Routes/Routes/**/*.{storyboard,png,pdf,pdf,xib,bundle,framework,xcassets}'
    routes.vendored_frameworks = 'vendored/GoogleMaps.framework'
    routes.public_header_files = 'Routes/Routes/**/*.h', 'vendored/GoogleMaps.framework/Headers/*.h'
    routes.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}

    routes.dependency 'CTMobile/Core'
    routes.dependency 'CTMobile/Visit'
    routes.dependency 'DTCoreText', '1.6.23'

    # тут все зависимости Google Maps
    routes.frameworks =  "Accelerate", "AVFoundation", "CoreBluetooth", "CoreData", "CoreLocation", "CoreText", "GLKit", "ImageIO", "OpenGLES", "QuartzCore", "Security", "SystemConfiguration", "CoreGraphics"
    routes.libraries = "icucore", "c++", "z"

  end

s.subspec 'NearbyAccounts' do |nearbyaccounts|
    nearbyaccounts.source_files = 'NearbyAccounts/NearbyAccounts/**/*.{h,m,mm,swift}'
    nearbyaccounts.exclude_files = '**/main.m'
    nearbyaccounts.resources    = 'NearbyAccounts/NearbyAccounts/**/*.{storyboard,png,pdf,pdf,xib,bundle,framework,xcassets}'
    nearbyaccounts.private_header_files = 'NearbyAccounts/NearbyAccounts/**/GMU*.h', 'NearbyAccounts/NearbyAccounts/**/GQT*.h', 'NearbyAccounts/NearbyAccounts/CNBGoogleClusterRenderer.h'
    nearbyaccounts.public_header_files = 'NearbyAccounts/NearbyAccounts/**/*.h'
    nearbyaccounts.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}

    nearbyaccounts.dependency 'CTMobile/Routes'
    nearbyaccounts.dependency 'DTCoreText', '1.6.23'
    nearbyaccounts.dependency 'SMCalloutView', '2.1.5'
    nearbyaccounts.dependency 'FBAnnotationClustering', '0.2.2'

end


  s.subspec 'Quiz' do |quiz|
    quiz.source_files = 'Quiz/Quiz/**/*.{h,m,mm,swift}'
    quiz.exclude_files = '**/main.m'
    quiz.resources    = 'Quiz/Quiz/**/*.{storyboard,png,pdf,xib,bundle,framework}'

    quiz.dependency 'CTMobile/Core'
    quiz.dependency 'MDRadialProgress', '1.3.2'

  end

  s.subspec 'Dashboard' do |dashboard|
    dashboard.source_files = 'Dashboard/Dashboard/**/*.{h,m,mm,swift}'
    dashboard.exclude_files = '**/main.m'
    dashboard.resources    = 'Dashboard/Dashboard/**/*.{storyboard,png,pdf,xib,bundle,framework}'

    dashboard.dependency 'CTMobile/Core'

  end

  s.subspec 'Content' do |content|
    content.source_files = 'Content/Content/**/*.{h,m,mm,swift}'
    content.exclude_files = '**/main.m'
    content.resources = 'Content/Content/**/*.{storyboard,png,pdf,xib,bundle,framework,xcassets}'
    content.dependency 'CTMobile/Core'

  end

  s.subspec 'Opportunity' do |opportunity|
      opportunity.source_files = 'Opportunity/Opportunity/**/*.{h,m,mm,swift}'
      opportunity.exclude_files = '**/main.m'
      opportunity.resources    = 'Opportunity/Opportunity/**/*.{storyboard,png,pdf,xib,bundle,framework}'

      opportunity.dependency 'CTMobile/Core'

    end

  s.subspec 'Chatter' do |chatter|
      chatter.source_files = 'Chatter/Chatter/**/*.{h,m,mm,swift}'
      chatter.exclude_files = '**/main.m'
      chatter.resources    = 'Chatter/Chatter/**/*.{storyboard,png,pdf,xib,bundle,framework,xcassets}'

      chatter.dependency 'CTMobile/Content'
      chatter.dependency 'DateTools', '2.0.0'

  end

  s.subspec 'DocumentFormer' do |documentformer|
      documentformer.source_files = 'DocumentFormer/DocumentFormer/**/*.{h,m,mm,swift}'
      documentformer.exclude_files = '**/main.m'
      documentformer.resources    = 'DocumentFormer/DocumentFormer/**/*.{storyboard,png,pdf,xib,bundle,framework}'

      documentformer.dependency 'CTMobile/Core'

  end

  s.subspec 'LinkList' do |linklist|
      linklist.source_files = 'LinkList/LinkList/**/*.{h,m,mm,swift}'
      linklist.exclude_files = '**/main.m'
      linklist.resources    = 'LinkList/LinkList/**/*.{storyboard,png,pdf,xib,bundle,framework}'

      linklist.dependency 'CTMobile/Core'
  end

  s.subspec 'Orders' do |orders|
    orders.source_files = 'Orders/Orders/**/*.{h,m,mm,swift}'
    orders.exclude_files = '**/main.m'
    orders.resources    = 'Orders/Orders/**/*.{storyboard,png,pdf,xib,bundle,framework,xcassets}'

    orders.dependency 'CTMobile/Core'

  end

  s.subspec 'SFOrders' do |sforders|
    sforders.source_files = 'SFOrders/SFOrders/**/*.{h,m,mm,swift}'
    sforders.exclude_files = '**/main.m'
    sforders.resources    = 'SFOrders/SFOrders/**/*.{storyboard,png,pdf,xib,bundle,framework}'

    sforders.dependency 'CTMobile/Core'

  end

  # удаляем modulemap крешлитикса, чтобы он не конфликтовал с нашим
  s.prepare_command = <<-CMD
    rm -f vendored/Crashlytics.framework/Modules/module.modulemap
    rm -f vendored/FirebaseAnalytics.framework/Modules/module.modulemap
    rm -f **/Pods/DTFoundation/**/NSURL+DTAppLinks.h
    rm -f **/Pods/DTFoundation/**/NSURL+DTAppLinks.m
    rm -f **/Pods/BlocksKit/BlocksKit/DynamicDelegate/**/NSURLConnection+BlocksKit.h
    rm -f **/Pods/BlocksKit/BlocksKit/DynamicDelegate/**/NSURLConnection+BlocksKit.m
    rm -f **/Pods/DTCoreText/Core/**/DTLazyImageView.h
    rm -f **/Pods/DTCoreText/Core/**/DTLazyImageView.m
    rm -f **/Pods/DTFoundation/Core/**/NSURL+DTUnshorten.h
    rm -f **/Pods/DTFoundation/Core/**/NSURL+DTUnshorten.m
    rm -f **/Pods/DTFoundation/Core/Source/**/UIImage+DTFoundation.h
    rm -f **/Pods/DTFoundation/Core/Source/**/UIImage+DTFoundation.m
  CMD

end
