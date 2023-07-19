Pod::Spec.new do |spec|
  spec.name         = 'SimpliFiTheme'
  spec.version      = '3.0.0'
  spec.summary      = 'A theme framework for iOS.'
  spec.description  = 'SimpliFiTheme provides theme capabilities for iOS applications.'
  spec.homepage     = 'https://www.simplifipay.com'
  spec.license      = { :type => 'Copyright', :text => 'Copyright ©2023 SimpliFi' }
  spec.author       = { 'Daud Mujib' => 'daud.mujib@simplifipay.com' }
  spec.platform     = :ios, '13.0'
  spec.source       = { :http => 'https://www.dropbox.com/s/diokpd4mm5yze8p/SimpliFiTheme.xcframework.zip?dl=1' }
  spec.ios.vendored_frameworks = 'SimpliFiTheme.xcframework'
  spec.swift_version = '5.0'

  spec.ios.deployment_target = '13.0'

end
