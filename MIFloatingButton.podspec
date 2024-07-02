Pod::Spec.new do |s|
  s.name             = 'MIFloatingButton'
  s.version          = '1.0.0'
  s.summary          = 'Floating Button is a UI element that use to a button that triggers the primary action for a particular screen.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/TusharSanchaniya-mi/MIFloatingButton'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mindinventory' => 'tushar.sanchaniya@mindinventory.com' }
  s.source           = { :git => 'https://github.com/TusharSanchaniya-mi/MIFloatingButton.git', :tag => s.version.to_s }

  s.social_media_url = 'https://github.com/TusharSanchaniya-mi'
  s.readme           = 'https://github.com/TusharSanchaniya-mi/MIFloatingButton/blob/main/README.md'
  s.ios.deployment_target = '15.0'
  s.swift_version = '5.0'
  s.source_files = 'MIFloatingButton/Classes/**/*', 'MIFloatingButton/README.md'
end
