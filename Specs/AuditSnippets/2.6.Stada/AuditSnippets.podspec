Pod::Spec.new do |s|
  s.name = 'AuditSnippets'
  s.version = '2.6.Stada'
  s.summary = 'Audit snippets'
  s.homepage = 'https://github.com/CT-Software/Audit'
  s.license = 'CTConsulting copyright'
  s.author = 'CTConsulting'
  s.source = { :git => 'git@github.com:CT-Software/Audit.git', :branch => '2.6.Stada', :commit => '60befe061183481cc848f49c705be0e5731e5f8c' }
  s.platform = :ios, '12.1'
  s.requires_arc = true
  s.swift_version = '5.0'

  s.dependency 'CTMobile', '2.6.Stada'

  s.subspec 'VisitDialog' do |ss|
    ss.dependency 'RMStepsController'
    ss.dependency 'MTDates'

    ss.source_files = 'VisitDialog/**/*.{h,m,swift}'
    ss.resources = 'VisitDialog/**/*.{storyboard,png,pdf,xib,bundle}'
  end
end
