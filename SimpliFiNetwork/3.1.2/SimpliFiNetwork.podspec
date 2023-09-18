Pod::Spec.new do |spec|
  spec.name         = 'SimpliFiNetwork'
  spec.version      = '3.1.2'
  spec.summary      = 'A network SDK for SimpliFi applications.'
  spec.description  = 'SimpliFiNetwork provides networking capabilities for SimpliFi iOS applications.'
  spec.homepage     = 'https://www.simplifipay.com'
  spec.license      = { :type => 'Copyright', :text => 'Copyright ©2023 SimpliFi' }
  spec.author       = { 'Daud Mujib' => 'daud.mujib@simplifipay.com' }
  spec.platform     = :ios, '13.0'
  spec.source       = { :http => 'https://www.dropbox.com/s/cvegppjvjk8unyq/SimpliFiNetwork.xcframework.zip?dl=1' }
  spec.vendored_frameworks = 'SimpliFiNetwork.xcframework'
  spec.swift_version = '5.0'
  
  spec.ios.deployment_target = '13.0'

  spec.dependency 'SimpliFiLogger'

end