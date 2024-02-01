Pod::Spec.new do |spec|
  spec.name         = 'SimpliFiCore'
  spec.version      = '4.0.0'
  spec.summary      = 'A core SDK for SimpliFi operations.'
  spec.description  = 'SimpliFiCore provides capabilities for SimpliFi operations.'
  spec.homepage     = 'https://www.simplifipay.com'
  spec.license      = { :type => 'Copyright', :text => 'Copyright ©2023 SimpliFi' }
  spec.author       = { 'Daud Mujib' => 'daud.mujib@simplifipay.com' }
  spec.platform     = :ios, '13.0'
  spec.source       = { :http => 'https://www.dropbox.com/s/tr5gws9umt9goa4/SimpliFiCore.xcframework.zip?dl=1' }
  spec.ios.vendored_frameworks = 'SimpliFiCore.xcframework'

  spec.swift_version = '5.0'

  spec.dependency 'SimpliFiNetwork'

end
