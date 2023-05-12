Pod::Spec.new do |s|
    s.name         = 'ZKSforce'
    s.version      = '38.0.2.8'
    s.summary      = 'A Cocoa library for calling the Salesforce.com SOAP APIs.'
    s.homepage     = 'https://github.com/superfell/zkSforce'
    s.license      = 'MIT'
    s.author       = { "Simon Fell" => "fellforce@gmail.com" }
    s.source       = { git: 'https://github.com/ctsf/zkSforce.git', tag: "v38.0.2.8" }
    s.platform     = :ios, '8.0'
    s.requires_arc = false

    s.source_files = 'zkSforce'
    s.public_header_files = 'zkSforce/*.h'
    s.dependency 'Libxml2Module'
    s.osx.frameworks = 'Security'
    s.libraries = 'xml2'
end