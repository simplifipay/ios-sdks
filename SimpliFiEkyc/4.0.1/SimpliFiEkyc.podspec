Pod::Spec.new do |spec|
  spec.name         = 'SimpliFiEkyc'
  spec.version      = '4.0.1'
  spec.summary      = 'A card SDK for SimpliFi eKYC.'
  spec.description  = 'SimpliFiCard provides capabilities for SimpliFi eKYC operations.'
  spec.homepage     = 'https://simplifipay.com'
  spec.license      = { :type => 'Copyright', :text => 'Copyright ©2023 SimpliFi' }
  spec.author       = { 'Daud Mujib' => 'daud.mujib@simplifipay.com' }
  spec.platform     = :ios, '13.0'
  spec.source       = { :http => 'https://www.dropbox.com/s/w6tv3mz39avrzhu/SimpliFiEkyc.xcframework.zip?dl=1' }
  spec.ios.vendored_frameworks = 'SimpliFiEkyc.xcframework'
  spec.swift_version = '5.0'

  spec.ios.deployment_target = '13.0'

  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  spec.dependency 'SimpliFiChallenge'
  spec.dependency 'IDWise'

end
