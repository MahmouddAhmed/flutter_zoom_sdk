#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_zoom_sdk.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_zoom_sdk'
  s.version          = '0.0.1'
  s.summary          = 'Zoom SDK implementation by EvilRATT'
  s.description      = <<-DESC
Zoom SDK implementation by EvilRATT
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'EvilRAT Technologies' => 'support@evilrattechnologies.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework MobileRTC' }
  s.preserve_paths = 'MobileRTC.framework', 'MobileRTCResources.bundle'
  s.vendored_frameworks = 'MobileRTC.framework'
  s.resource = 'MobileRTCResources.bundle'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end