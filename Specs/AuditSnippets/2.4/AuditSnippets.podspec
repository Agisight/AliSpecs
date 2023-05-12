Pod::Spec.new do |s|
  s.name = 'AuditSnippets'
  s.version = '2.4'
  s.summary = 'Audit snippets'
  s.homepage = 'https://github.com/CT-Software/Audit'
  s.license = 'CTConsulting copyright'
  s.author = 'CTConsulting'
  s.source = { :git => 'https://github.com/CT-Software/Audit.git', :branch => '2.4' }
  s.platform = :ios, '11.0'
  s.requires_arc = true
  s.swift_version = '5.0'

  s.dependency 'CTMobile', '2.4'

  s.subspec 'VisitDialog' do |ss|
    ss.dependency 'RMStepsController'
    ss.dependency 'MTDates'

    ss.source_files = 'VisitDialog/**/*.{h,m,swift}'
    ss.resources = 'VisitDialog/**/*.{storyboard,png,pdf,xib,bundle}'
  end
end
