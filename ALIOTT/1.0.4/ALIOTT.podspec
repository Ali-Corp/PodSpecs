Pod::Spec.new do |s|
  s.name         = 'ALIOTT'
  s.version      = '1.0.4'
  s.authors      = "Ali Mobile Ecosystem"
  s.summary      = "Ali OTT SDK"
  s.description  = "This open-source library allows you to integrate Call OTT into your iOS applications."
  s.homepage     = "https://ali.vn"
  s.license      = 'LICENSE.txt'
  s.xcconfig = { "ALIOTT_SDK_VERSION" => s.version }
  s.source   = {
    :git => "https://github.com/Ali-Corp/AliOTT.git",
    :tag => 'v' + s.version.to_s
  }
  s.documentation_url = "https://developer.ali.vn"
  s.platform = :ios
  s.ios.deployment_target = '14.0'
  s.static_framework = true
  s.swift_versions = [5.0, 5.3, 5.4]

  s.subspec 'Hotline' do |hotline|
    hotline.vendored_frameworks = [
      "iOS/ALIOTTHotline.xcframework",
      "iOS/Starscream.xcframework",
    ]
    hotline.resource_bundle = {
        "ALIOTTHotline" => ["iOS/resources/*.mp3"],
    }

    hotline.dependency 'WebRTC-lib', '113.0.0'
    hotline.dependency 'SwiftyJSON', '~> 5.0'

    hotline.frameworks = [
      "UIKit",
      "Foundation",
      "AVFoundation",
      "CallKit"
    ]
  end
end
