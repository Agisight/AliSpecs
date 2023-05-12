Pod::Spec.new do |s|
  s.name = "CT-RDVTabBarController"
  s.version = '1.1.1'
  s.summary = "NSString ⟹ NSNumber"

  s.homepage = "https://github.com/ctsf/CT-RDVTabBarController"
  s.license = 'MIT'
  s.author = { "CT Consulting" => "ctconsult.ru" }

  s.ios.deployment_target = '10.0'

  s.source = { :git => 'https://github.com/ctsf/CT-RDVTabBarController.git', tag: '1.1.1' }

  s.source_files = 'RDVTabBarController/*.{h,m}'
  s.requires_arc = true
end