#
# Be sure to run `pod lib lint LDZFVoiceConvert.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LDZFVoiceConvert'
  s.version          = '0.1.0'
  s.summary          = 'A short description of LDZFVoiceConvert.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/ZiOS-Repo/LDZFVoiceConvert'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhuyuhui434@gmail.com' => 'zhuyuhui434@gmail.com' }
  s.source           = { :git => 'https://github.com/ZiOS-Repo/LDZFVoiceConvert.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  
  s.frameworks =  'AVFoundation', 'CoreTelephony', 'SystemConfiguration', 'MobileCoreServices'
  s.libraries  =  'sqlite3', 'icucore', 'stdc++'
  s.xcconfig = { "FRAMEWORK_SEARCH_PATHS" => "${PODS_ROOT}/LDZFVoiceConvert/Meiqia-SDK-files"}
  
  # avoid compile error when using 'use frameworks!',because this header is c++, but in unbrellar header don't know how to compile, there's no '.mm' file in the context.
  s.private_header_files = 'Meiqia-SDK-files/MQChatViewController/Vendors/VoiceConvert/amrwapper/wav.h'
  s.source_files = 'Meiqia-SDK-files/MQChatViewController/**/*.{h,m,mm,cpp}'
  s.vendored_libraries = 'Meiqia-SDK-files/MQChatViewController/Vendors/MLAudioRecorder/amr_en_de/lib/libopencore-amrnb.a', 'Meiqia-SDK-files/MQChatViewController/Vendors/MLAudioRecorder/amr_en_de/lib/libopencore-amrwb.a'
  #ss.preserve_path = '**/libopencore-amrnb.a', '**/libopencore-amrwb.a'
  s.xcconfig = { "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/LDZFVoiceConvert/Meiqia-SDK-files\"" }
end
# pod trunk push LDZFVoiceConvert.podspec --use-libraries --verbose --allow-warnings
