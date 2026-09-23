#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint background_on_back.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'background_on_back'
  s.version          = '0.0.1'
  s.summary          = 'Flutter plugin to handle backgrounding the app on back press.'
  s.description      = <<-DESC
Flutter plugin to handle backgrounding the app on pressing back button instead of quitting app.
                       DESC
  s.homepage         = 'https://github.com/openstair/background_on_back'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'OpenStair' => 'support@openstair.in' }
  s.source           = { :path => '.' }
  s.source_files = 'background_on_back/Sources/background_on_back/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # Privacy manifest
  s.resource_bundles = {'background_on_back_privacy' => ['background_on_back/Sources/background_on_back/PrivacyInfo.xcprivacy']}
end
