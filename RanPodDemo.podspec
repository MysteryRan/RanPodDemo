#
# Be sure to run `pod lib lint RanPodDemo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RanPodDemo'
  s.version          = '0.1.0'
  s.summary          = '自建的FFmpeg pod库 '

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/MysteryRan/RanPodDemo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ran' => 'ran@ran.com' }
  s.source           = { :git => 'https://github.com/MysteryRan/RanPodDemo.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  #s.source_files = 'RanPodDemo/Classes/**/*'
  
  s.subspec 'FFmpeg-iOS' do |ss|
    ss.vendored_libraries = 'RanPodDemo/Classes/FFmpeg-iOS/lib/*.a'
    ss.source_files = 'RanPodDemo/Classes/FFmpeg-iOS/include/libavcodec/*.h'
  end

#  s.subspec 'libyuv' do |ss|
#    ss.source_files = 'RanPodDemo/libyuv/*.a'
#    ss.subspec 'libavcodec' do |sss|
#       sss.public_header_files = 'RanPodDemo/Classes/include/libavcodec/*.h'
#    end
#  end
  
  # s.resource_bundles = {
  #   'RanPodDemo' => ['RanPodDemo/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
