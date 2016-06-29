#
# Be sure to run `pod lib lint Crasheye.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Crasheye'
  s.version          = '2.4.0'
  s.summary          = 'iOS library for Crash Report Service.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://www.crasheye.cn'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gang Wang' => 'gang.wang.china@gmail.com' }


  s.source       = { :git => 'https://github.com/GangWang/crasheye-ios-sdk.git', :tag => s.version.to_s }
  #s.source           = { :http => 'http://crasheye.kssws.ks-cdn.com/downloads/sdk/ios/crasheye_ios_v2.4.0.zip' }
  #s.source           = { :path => '/Users/gangwang/Downloads/crasheye_ios_v2.4.0' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform      = :ios
  s.ios.deployment_target = '7.0'

  # s.source_files = [
  #     'Crasheye.h'
  # ]
  #
  # s.vendored_libraries = 'libCrasheye.a'

  s.libraries = 'c++','z'
  s.frameworks = 'UIKit','SystemConfiguration','Security','CoreTelephony','CFNetwork'
  s.pod_target_xcconfig = {
    'OTHER_LDFLAGS' => '-licucore -ObjC'
  }

end
