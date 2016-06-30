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
实时、全面、专业的APP崩溃分析、统计反馈系统.
支持Cocos2d、Unity、Unreal引擎，支持根据玩家ID、渠道号及自定义字段等信息追踪崩溃
                       DESC

  s.homepage         = 'http://www.crasheye.cn'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gang Wang' => 'gang.wang.china@gmail.com' }

  s.source            = { :git => 'https://github.com/GangWang/crasheye-ios-sdk.git', :tag => s.version.to_s }

  s.platform      = :ios
  s.ios.deployment_target = '7.0'

  s.source_files = [
      'Crasheye.h'
  ]

  s.vendored_libraries = 'libCrasheye.a'

  s.libraries = 'c++','z'
  s.frameworks = 'UIKit','SystemConfiguration','Security','CoreTelephony','CFNetwork'
  s.xcconfig = {
    'OTHER_LDFLAGS' => '-licucore -ObjC'
  }

end
