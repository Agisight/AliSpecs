Pod::Spec.new do |s|
  s.name         = "iOS-htmltopdf"
  s.version      = "2.1.0"
  s.summary      = "This class enables simple URL-based PDF creation."
  s.description  = "Pages are created the exact same way they would be if the user printed the content on an iOS device (very similar as well as OS X print output)."
  s.homepage     = "https://github.com/iclems/iOS-htmltopdf"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Clément Wehrung" => "cwehrung@nurves.com" }
  s.source       = { :git => "https://github.com/pilot34/iOS-htmltopdf.git" , :tag => '2.1.0' }
  s.platform     = :ios, '8.0'
  s.source_files = 'Classes', '**/*.{h,m}'
  s.exclude_files = 'HTMLtoPDF-Demo'
  s.requires_arc = true
end