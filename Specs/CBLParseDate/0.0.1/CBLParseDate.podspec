Pod::Spec.new do |s|
  s.name     = 'CBLParseDate'
  s.authors  = 'couchbase'
  s.version  = '0.0.1'
  s.license  = {
    :type => 'MIT'
  }
  s.platform = :ios, '5.0'
  s.summary  = 'Fast date parsing.'
  s.homepage = 'https://github.com/couchbase/couchbase-lite-ios'
  s.source   = { :git => 'https://github.com/couchbase/couchbase-lite-ios.git', :branch => '1.4.1'}
  s.source_files = 'Source/CBLParseDate.{h,c}'
  s.requires_arc = true
end
