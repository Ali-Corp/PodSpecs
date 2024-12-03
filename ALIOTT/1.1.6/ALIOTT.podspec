Pod::Spec.new do |s|
  s.name         = 'ALIOTT'
  s.version      = '1.1.6'
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
  s.ios.deployment_target = '12.0'
  s.static_framework = true
  s.swift_versions = [5.0, 5.3, 5.4, 6.0]

  s.subspec 'ALI' do |ali|
    ali.dependency 'WebRTC-lib', '113.0.0'

    ali.frameworks = [
      "UIKit",
      "Foundation",
      "AVFoundation",
      "CallKit",
      "PushKit"
    ]
    ali.vendored_frameworks = [
      "iOS/Starscream.xcframework",
      "iOS/SwiftyJSON.xcframework",
      "iOS/ALIOTT.xcframework",
    ]
    ali.resource_bundle = {
      "ALIOTT" => ["iOS/resources/sounds/*.mp3"],
    }
  end

  s.subspec 'XanhSM' do |xsm|
    xsm.dependency 'WebRTC-lib', '113.0.0'

    xsm.frameworks = [
      "UIKit",
      "Foundation",
      "AVFoundation",
      "CallKit",
      "PushKit"
    ]

    xsm.vendored_frameworks = [
      "iOS/Starscream.xcframework",
      "iOS/SwiftyJSON.xcframework",
      "iOS/ALIOTT.xcframework",
      "iOS/ALIOTTXanhSMUIKit.xcframework",
    ]
    xsm.resource_bundle = {
      "ALIOTT" => ["iOS/resources/sounds/*.mp3"],
      "ALIOTTXanhSM" => ["iOS/resources/images/*.png", "iOS/resources/localizations/**/*"],
    }
  end
end
