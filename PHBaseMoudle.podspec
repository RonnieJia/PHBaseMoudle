#
# Be sure to run `pod lib lint PHBaseMoudle.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PHBaseMoudle'
  s.version          = '1.0.0'
  s.summary          = 'A short description of PHBaseMoudle.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/ronniejia/PHBaseMoudle'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ronniejia' => 'jiapinghui@baijiahulian.com' }
  s.source           = { :git => 'https://github.com/Ronniejia/PHBaseMoudle.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'PHBaseMoudle/Classes/**/*'
  
  s.resource_bundles = {
    'PHBaseMoudle' => ['PHBaseMoudle/Assets/*']
  }

#  s.resource     = 'PHBaseMoudle/Assets/PHBaseAssets.bundle'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.dependency 'PHUtils'
  s.dependency 'SwiftyJSON', '~> 5.0.0'
  s.dependency 'ESTabBarController-swift', '~> 2.8.0'
end
