Pod::Spec.new do |s|
    s.name                  = "UserLeapKit"
    s.version               = "4.4.0"
    s.summary               = "UserLeap surveys in iOS"
    s.description           = <<-DESC
      Access the power of Sprig inside of your iOS applications. Track visitor progress and deliver surveys natively across
      all  of your platforms.
      DESC
    s.homepage              = "http://sprig.com"
    s.license               = { :type => 'CUSTOM', :text => <<-LICENSE
****************************************************************************************************************************
UserLeap iOS SDK is offered under UserLeap's END USER LICENSE AGREEMENT. A copy of the license is available upon request
from your UserLeap Sales contact.
****************************************************************************************************************************
    LICENSE
                              }
    s.author                = { "The Sprig Team" => "ios@sprig.com" }
    s.source                = { 
                                :git => "https://github.com/UserLeap/userleap-ios-sdk-releases.git", 
                                :tag => s.version.to_s
                              }    
    s.source_files          = "UserLeapKit.framework/Headers/*.h"
    s.public_header_files   = "UserLeapKit.framework/Headers/*.h"
    s.vendored_frameworks   = "UserLeapKit.framework"
    s.platform              = :ios
    s.swift_version         = "5.3"
    s.ios.deployment_target = '10.3'
    s.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
