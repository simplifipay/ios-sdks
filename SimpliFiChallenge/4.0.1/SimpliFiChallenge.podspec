Pod::Spec.new do |spec|
  
  spec.name         = 'SimpliFiChallenge'
  spec.version      = '4.0.1'
  spec.summary      = 'A challenge SDK for SimpliFi card operations.'
  spec.description  = 'SimpliFiChallenge provides challenge capabilities for SimpliFi operations.'
  spec.homepage     = 'https://www.simplifipay.com'
  spec.license      = { :type => 'Copyright', :text => 'Copyright ©2023 SimpliFi' }
  spec.author       = { 'Daud Mujib' => 'daud.mujib@simplifipay.com' }
  spec.platform     = :ios, '13.0'
  spec.source       = { :http => 'https://www.dropbox.com/s/bv3mzqp8ox16zt9/SimpliFiChallenge.xcframework.zip?dl=1' }
  spec.ios.vendored_frameworks = 'SimpliFiChallenge.xcframework'
  spec.swift_version = '5.0'
  
  spec.dependency 'AEOTPTextField', '1.2.6'
  spec.dependency 'KeychainAccess', '4.2.2'
  spec.dependency 'SimpliFiUI'
  
end
