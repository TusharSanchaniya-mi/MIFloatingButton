Pod::Spec.new do |s|
  s.name             = 'MIFloatingButton'
  s.version          = '1.0.7'
  s.summary          = 'Easily customizable floating button menu created with SwiftUI. with smooth animation and attractive layout design style.'

  s.description      = <<-DESC
                      Easily customize your SwiftUI app with MIFloatingButton, 
                      a sleek floating button menu featuring smooth animations and 
                      an attractive layout design, perfect for enhancing user interaction and accessibility.
                       DESC

  s.homepage         = 'https://github.com/TusharSanchaniya-mi/MIFloatingButton'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mindinventory' => 'tushar.sanchaniya@mindinventory.com' }
  s.source           = { :git => 'https://github.com/TusharSanchaniya-mi/MIFloatingButton.git', :tag => s.version.to_s }

  s.social_media_url = 'https://github.com/TusharSanchaniya-mi'
  s.readme           = 'https://github.com/TusharSanchaniya-mi/MIFloatingButton/blob/main/README.md'
  s.ios.deployment_target = '15.0'
  s.swift_version = '5.10'
  s.source_files = 'MIFloatingButton/Classes/**/*', 'MIFloatingButton/README.md'
end
