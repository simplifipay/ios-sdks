Pod::Spec.new do |spec|
  spec.name         = 'SimpliFiLogger'
  spec.version      = '3.0.3'
  spec.summary      = 'A logging framework for iOS.'
  spec.description  = 'SimpliFiLogger provides logging capabilities for iOS applications.'
  spec.homepage     = 'https://www.simplifipay.com'
  spec.license      = { :type => 'Copyright', :text => 'Copyright ©2023 SimpliFi' }
  spec.author       = { 'Daud Mujib' => 'daud.mujib@simplifipay.com' }
  spec.platform     = :ios, '13.0'
  spec.source       = { :http => 'https://www.dropbox.com/s/3qbgaq509i8x3e6/SimpliFiLogger.xcframework.zip?dl=1' }
  spec.ios.vendored_frameworks = 'SimpliFiLogger.xcframework'
  spec.swift_version = '5.0'

  spec.ios.deployment_target = '13.0'

  spec.dependency 'Mixpanel-swift'

end
