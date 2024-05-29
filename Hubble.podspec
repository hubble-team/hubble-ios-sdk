#
#  Be sure to run `pod spec lint Hubble.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "Hubble"
  spec.version      = "1.2.0"
  spec.summary      = "Hubble iOS SDK"
  spec.description  = <<-DESC
  Build better products with powerful insights. The only all-in-one software to maximize the power of continuous discovery for your product and UX team.
                   DESC

  spec.homepage     = "https://www.hubble.team/"
  spec.license      = { :type => "Apache 2.0", :file => "LICENSE.md" }
  spec.author             = { "Team Hubble" => "max@hubble.team" }
  
  spec.platform     = :ios
  spec.ios.deployment_target = "15.1"

  spec.source       = { :git => "https://github.com/hubble-team/hubble-ios-sdk.git", :tag => "#{spec.version}" }
  spec.vendored_frameworks   = "Hubble.xcframework"

end
