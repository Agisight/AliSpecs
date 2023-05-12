Pod::Spec.new do |s|
  s.name = "DDMathParser"
  s.version = "1.0.0"
  s.summary = "NSString ⟹ NSNumber"

  s.homepage = "https://github.com/davedelong/DDMathParser"
  s.license = 'MIT'
  s.author = { "Dave DeLong" => "davedelong@me.com" }
  s.social_media_url = "https://twitter.com/davedelong"

  s.ios.deployment_target = '7.0'

  s.source = { :git => "https://github.com/davedelong/DDMathParser.git" }

  s.source_files = 'DDMathParser/*.{h,m}'
  s.requires_arc = true
end