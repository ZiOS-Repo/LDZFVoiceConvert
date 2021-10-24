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

  s.ios.deployment_target = '9.0'
  s.private_header_files = 'LDZFVoiceConvert/**/amrwapper/wav.h'
  s.source_files =  'LDZFVoiceConvert/**/*.{h,m,mm}'
  s.vendored_libraries = [
    'LDZFVoiceConvert/**/libopencore-amrnb.a',
    'LDZFVoiceConvert/**/libopencore-amrwb.a',
  ]
  s.frameworks =  'AVFoundation'
  s.libraries  = 'stdc++'  # s.resource_bundles = {
  #   'LDZFVoiceConvert' => ['LDZFVoiceConvert/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
# pod trunk push LDZFVoiceConvert.podspec --use-libraries --verbose --allow-warnings
