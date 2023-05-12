Pod::Spec.new do |s|
  s.name         = 'CTMobile'
  s.version      = '1.6.0'
  s.summary      = 'The New CT Mobile'
  s.homepage     = 'https://github.com/CT-Consulting/The-New-CT-Mobile'
  s.license      = 'MIT'
  s.author       = { 'gtarasov' => 'gleb34@gmail.com' }
  s.source       = { :git => 'https://github.com/CT-Consulting/The-New-CT-Mobile', :tag => '1.6.0' }
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  

  s.subspec 'Utils' do |utils|
    utils.source_files = 'Utils/Utils/*.{h,m,mm}'
    utils.dependency 'BlocksKit'
    utils.dependency 'FrameAccessor'
    utils.dependency 'Reachability'
  end

  s.subspec 'Synchronization' do |synchr|
    synchr.source_files = 'Synchronization/Synchronization/**/*.{h,m,mm}'
    synchr.prefix_header_file = 'Synchronization/Synchronization/Synchronization-Prefix.pch'
    synchr.resources    = 'Synchronization/Synchronization/**/*.{storyboard,png,xib,bundle}'

    synchr.dependency 'CTMobile/Utils'
    synchr.dependency 'ZKSforce', '32.0.0'
    synchr.dependency 'MagicalRecord'
    synchr.dependency 'SSKeychain'
    synchr.dependency 'CBLParseDate'
    synchr.dependency 'DDMathParser'
    synchr.dependency 'DFCache', '3.0.1'
    synchr.dependency 'objective-zip'

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
    core.dependency 'TPKeyboardAvoiding', '1.2.6'
    core.dependency 'RDVTabBarController'
    core.dependency 'PSPDFTextView'
    core.dependency 'TOWebViewController'
    core.dependency 'Fabric'
    core.dependency 'Fabric/Crashlytics'
    core.dependency 'AGWindowView'
    core.dependency 'UIImageEffects'
    core.dependency 'Masonry'
    core.dependency 'MTStatusBarOverlay'
    core.dependency 'ZipArchive'
    core.dependency 'JGProgressHUD'

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

    account.dependency 'CTMobile/Routes'
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
    app.dependency 'iCarousel'
    app.dependency 'LBYouTubeView'
    app.dependency 'iOS-htmltopdf'
    app.dependency 'AFNetworking'
    app.dependency 'WebViewJavascriptBridge'
    app.dependency 'hpple'

    app.framework    = 'MultipeerConnectivity'
  end

 
 s.subspec 'Routes' do |routes|
    routes.source_files = 'Routes/Routes/**/*.{h,m,mm}'
    routes.resources    = 'Routes/Routes/**/*.{storyboard,png,xib,bundle,framework}'
    routes.prefix_header_file = 'Routes/Routes/Routes-Prefix.pch'

    routes.dependency 'CTMobile/Core'
    routes.dependency 'DTCoreText'
    routes.dependency 'Google-Maps-iOS-SDK', '1.9.2.1'

  end

s.subspec 'NearbyAccounts' do |nearbyaccounts|
    nearbyaccounts.source_files = 'NearbyAccounts/NearbyAccounts/**/*.{h,m,mm}'
    nearbyaccounts.resources    = 'NearbyAccounts/NearbyAccounts/**/*.{storyboard,png,xib,bundle,framework}'
    nearbyaccounts.prefix_header_file = 'NearbyAccounts/NearbyAccounts/NearbyAccounts-Prefix.pch'

    nearbyaccounts.dependency 'CTMobile/Routes'
    nearbyaccounts.dependency 'DTCoreText'
    nearbyaccounts.dependency 'SMCalloutView'
    nearbyaccounts.dependency 'FBAnnotationClustering'
    nearbyaccounts.dependency 'Google-Maps-iOS-SDK', '1.9.2.1'

end


  s.subspec 'Quiz' do |quiz|
    quiz.source_files = 'Quiz/Quiz/**/*.{h,m,mm}'
    quiz.resources    = 'Quiz/Quiz/**/*.{storyboard,png,xib,bundle,framework}'
    quiz.prefix_header_file = 'Quiz/Quiz/Quiz-Prefix.pch'

    quiz.dependency 'CTMobile/Core'
    quiz.dependency 'PNChart'
    quiz.dependency 'MDRadialProgress'

  end

  s.subspec 'Dashboard' do |dashboard|
    dashboard.source_files = 'Dashboard/Dashboard/**/*.{h,m,mm}'
    dashboard.resources    = 'Dashboard/Dashboard/**/*.{storyboard,png,xib,bundle,framework}'
    dashboard.prefix_header_file = 'Dashboard/Dashboard/Dashboard-Prefix.pch'

    dashboard.dependency 'CTMobile/Core'

  end

  s.subspec 'Content' do |content|
    content.source_files = 'Content/Content/**/*.{h,m,mm}'
    content.resources    = 'Content/Content/**/*.{storyboard,png,xib,bundle,framework}'
    content.prefix_header_file = 'Content/Content/Content-Prefix.pch'

    content.dependency 'CTMobile/Core'

  end

s.subspec 'Opportunity' do |opportunity|
    opportunity.source_files = 'Opportunity/Opportunity/**/*.{h,m,mm}'
    opportunity.resources    = 'Opportunity/Opportunity/**/*.{storyboard,png,xib,bundle,framework}'
    opportunity.prefix_header_file = 'Opportunity/Opportunity/Opportunity-Prefix.pch'

    opportunity.dependency 'CTMobile/Core'

  end

end