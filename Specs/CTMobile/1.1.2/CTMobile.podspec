Pod::Spec.new do |s|
  s.name         = 'CTMobile'
  s.version      = '1.1.2'
  s.summary      = 'The New CT Mobile'
  s.homepage     = 'https://github.com/CT-Consulting/The-New-CT-Mobile'
  s.license      = 'MIT'
  s.author       = { 'gtarasov' => 'gleb34@gmail.com' }
  s.source       = { :git => 'https://github.com/CT-Consulting/The-New-CT-Mobile.git', :tag => '1.1.2' }
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  

  s.subspec 'Utils' do |utils|
    utils.source_files = 'Utils/Utils/*.{h,m,mm}'
    utils.dependency 'BlocksKit', '2.2.5'
    utils.dependency 'FrameAccessor', '1.3.2'
    utils.dependency 'Reachability', '3.1.1'
    utils.dependency 'objective-zip', '0.8.3'
    utils.dependency 'hpple', '0.2.0'
    utils.dependency 'JGProgressHUD', '1.2.2'
    utils.dependency 'Masonry', '0.5.3'
    utils.dependency 'MTStatusBarOverlay', '0.9.1'
    utils.dependency 'ZipArchive', '1.3.0'
    utils.dependency 'PNChart', '0.5'
    utils.dependency 'MDRadialProgress', '1.3.1'
    utils.dependency 'AFNetworking', '2.4.1'
  end

  s.subspec 'Synchronization' do |synchr|
    synchr.source_files = 'Synchronization/Synchronization/**/*.{h,m,mm}'
    synchr.prefix_header_file = 'Synchronization/Synchronization/Synchronization-Prefix.pch'
    synchr.resources    = 'Synchronization/Synchronization/**/*.{storyboard,png,xib,bundle}'

    synchr.dependency 'CTMobile/Utils'
    synchr.dependency 'ZKSforce', '31.0.0'
    synchr.dependency 'MagicalRecord', '2.2'
    synchr.dependency 'SSKeychain', '1.2.2'
    synchr.dependency 'CBLParseDate', '0.0.1'
    synchr.dependency 'DDMathParser', '1.0.0'

    synchr.frameworks = 'CoreData'
    synchr.library = 'xml2'
    synchr.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  end

  s.subspec 'Core' do |core|
    core.prefix_header_file = 'Core/Core/Core-Prefix.pch'
    core.source_files = 'Core/Core/**/*.{h,m,mm}'
    core.resources    = 'Core/Core/**/*.{storyboard,png,xib,bundle,plist}'

    core.dependency 'CTMobile/Utils'
    core.dependency 'CTMobile/Synchronization'
    core.dependency 'TPKeyboardAvoiding', '1.2.4'
    core.dependency 'RDVTabBarController', '1.1.8'
    core.dependency 'PSPDFTextView', '1.2.0'
    core.dependency 'TOWebViewController', '2.0.14'
    # crashlytics часто обновляется, так что лучше не фиксировать версию
    core.dependency 'CrashlyticsFramework', '~> 2.2.5.1' 
    core.dependency 'AGWindowView', '0.1.9'
    core.dependency 'TesseractOCRiOS', '2.22'

    core.frameworks = 'MapKit'
  
  end

  s.subspec 'Contact' do |contact|
    contact.source_files = 'Contact/Contact/**/*.{h,m,mm}'
    contact.resources    = 'Contact/Contact/**/*.{storyboard,bundle}'
    contact.prefix_header_file = 'Contact/Contact/Contact-Prefix.pch'

    contact.dependency 'CTMobile/Core'
  end

  s.subspec 'Visit' do |visit|
    visit.source_files = 'Visit/Visit/**/*.{h,m,mm}'
    visit.resources    = 'Visit/Visit/**/*.{storyboard,png,xib,bundle}'
    visit.prefix_header_file = 'Visit/Visit/Visit-Prefix.pch'

    visit.dependency 'CTMobile/Core'
  end

  s.subspec 'Account' do |account|
    account.source_files = 'Account/Account/**/*.{h,m,mm}'
    account.resources    = 'Account/Account/**/*.{storyboard,png,xib,bundle}'
    account.prefix_header_file = 'Account/Account/Account-Prefix.pch'
    account.framework    = 'MapKit'

    account.dependency 'CTMobile/Core'
  end

  s.subspec 'Calendar' do |calendar|
    calendar.source_files = 'Calendar/Calendar/**/*.{h,m,mm}'
    calendar.resources    = 'Calendar/Calendar/**/*.{storyboard,png,xib,bundle}'
    calendar.prefix_header_file = 'Calendar/Calendar/Calendar-Prefix.pch'

    calendar.dependency 'CTMobile/Core'
  end

  s.subspec 'Application' do |app|
    app.source_files = 'Application/Application/**/*.{h,m,mm}'
    app.resources    = 'Application/Application/**/*.{storyboard,png,xib,bundle}'
    app.prefix_header_file = 'Application/Application/Application-Prefix.pch'

    app.dependency 'CTMobile/Core'
    app.dependency 'iCarousel', '1.8.1'
    app.dependency 'LBYouTubeView', '0.0.1.1'
    app.framework    = 'MultipeerConnectivity'
  end

 
 s.subspec 'Routes' do |routes|
    routes.source_files = 'Routes/Routes/**/*.{h,m,mm}'
    routes.resources    = 'Routes/Routes/**/*.{storyboard,png,xib,bundle,framework}'
    routes.prefix_header_file = 'Routes/Routes/Routes-Prefix.pch'
    routes.vendored_frameworks = 'Routes/GoogleMaps.framework' 

    routes.dependency 'CTMobile/Core'
    routes.dependency 'DTCoreText', '1.6.14'

  end

  s.subspec 'Quiz' do |quiz|
    quiz.source_files = 'Quiz/Quiz/**/*.{h,m,mm}'
    quiz.resources    = 'Quiz/Quiz/**/*.{storyboard,png,xib,bundle,framework}'
    quiz.prefix_header_file = 'Quiz/Quiz/Quiz-Prefix.pch'

    quiz.dependency 'CTMobile/Core'
    quiz.dependency 'DTCoreText', '1.6.14'

  end

end