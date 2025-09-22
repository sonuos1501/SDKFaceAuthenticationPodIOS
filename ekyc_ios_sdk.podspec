#
#  Be sure to run `pod spec lint LivenessUtility.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "ekyc_ios_sdk"
  spec.version      = "1.0.5"
  spec.summary      = "Face authentication SDK for iOS (device only)."
  spec.description  = <<-DESC
  ekyc_ios_sdk provides face authentication with liveness detection, only for physical devices.
  DESC
  spec.homepage     = "https://github.com/sonuos1501/SDKFaceAuthenticationPodIOS"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.platform     = :ios, "12.0"
  spec.author       = { 'sonuostt' => 'sonuospt@gmail.com' }
  spec.source       = { :http => "https://github.com/sonuos1501/SDKFaceAuthenticationPodIOS/releases/download/1.0.5/ekyc_ios_sdk.xcframework.zip" }
  spec.vendored_frameworks = 'ekyc_ios_sdk.xcframework'
  spec.swift_version = "5.0"

  # loại bỏ arm64 simulator để build device-only
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  spec.dependency "TensorFlowLiteSwift", "2.13.0"
  spec.dependency "GoogleMLKit/FaceDetection", "6.0.0"


end