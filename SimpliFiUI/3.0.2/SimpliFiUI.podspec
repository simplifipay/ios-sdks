Pod::Spec.new do |spec|
  spec.name         = 'SimpliFiUI'
  spec.version      = '3.0.2'
  spec.summary      = 'A UI framework for iOS.'
  spec.description  = 'SimpliFiUI provides UI elements for iOS applications.'
  spec.homepage     = 'https://www.simplifipay.com'
  spec.license      = { :type => 'Copyright', :text => 'Copyright ©2023 SimpliFi' }
  spec.author       = { 'Daud Mujib' => 'daud.mujib@simplifipay.com' }
  spec.platform     = :ios, '13.0'
  spec.source       = { :http => 'https://www.dropbox.com/s/qertma3esprettk/SimpliFiUI.xcframework.zip?dl=1' }
  spec.ios.vendored_frameworks = 'SimpliFiUI.xcframework'
  spec.swift_version = '5.0'

  spec.ios.deployment_target = '13.0'

  spec.dependency 'SimpliFiCore'

end
