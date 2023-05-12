Pod::Spec.new do |s|
  s.name = "CT-RDVTabBarController"
  s.version = '1.0.0'
  s.summary = "NSString ⟹ NSNumber"

  s.homepage = "https://github.com/CT-Consulting/CT-RDVTabBarController"
  s.license = 'MIT'
  s.author = { "CT Consulting" => "ctconsult.ru" }

  s.ios.deployment_target = '7.0'

  s.source = { :git => 'https://github.com/CT-Consulting/CT-RDVTabBarController.git' }

  s.source_files = 'RDVTabBarController/*.{h,m}'
  s.requires_arc = true
end