Pod::Spec.new do |s|
    s.name         = 'CommonCryptoModule'
    s.version      = '0.0.2'
    s.summary      = 'CommonCrypto wrapper to use it in Objective-C modules'
    s.homepage     = 'https://github.com/pilot34/CommonCryptoModule'
    s.license      = 'MIT'
    s.author       = { "gtarasov" => "gleb34@gmail.com" }
    s.source       = { git: 'https://github.com/pilot34/CommonCryptoModule.git', tag: "0.0.2" }
    s.platform     = :ios, '8.0'

    s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/CommonCrypto' }
    s.module_map = 'CommonCrypto.modulemap'
    s.module_name = 'CommonCrypto'
    s.source_files = 'dummy-source.m'
end