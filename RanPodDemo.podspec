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
    ss.subspec 'include' do |sss|
        sss.subspec 'libavcodec' do |ssss|
            ssss.source_files = 'RanPodDemo/Classes/FFmpeg-iOS/include/libavcodec/*.h'
        end
        sss.subspec 'libavdevice' do |ssss|
            ssss.source_files = 'RanPodDemo/Classes/FFmpeg-iOS/include/libavdevice/*.h'
        end
        sss.subspec 'libavfilter' do |ssss|
            ssss.source_files = 'RanPodDemo/Classes/FFmpeg-iOS/include/libavfilter/*.h'
        end
        sss.subspec 'libavformat' do |ssss|
            ssss.source_files = 'RanPodDemo/Classes/FFmpeg-iOS/include/libavformat/*.h'
        end
        sss.subspec 'libavutil' do |ssss|
            ssss.source_files = 'RanPodDemo/Classes/FFmpeg-iOS/include/libavutil/*.h'
        end
        sss.subspec 'libswresample' do |ssss|
            ssss.source_files = 'RanPodDemo/Classes/FFmpeg-iOS/include/libswresample/*.h'
        end
        sss.subspec 'libswscale' do |ssss|
            ssss.source_files = 'RanPodDemo/Classes/FFmpeg-iOS/include/libswscale/*.h'
        end
    end
    ss.subspec 'lib' do |sss|
        sss.source_files = 'RanPodDemo/Classes/FFmpeg-iOS/lib/*.a'
    end
  end

#  s.subspec 'FFmpeg-iOS' do |ss|
#        ss.subspec 'lib' do |sss|
#           sss.vendored_libraries = 'RanPodDemo/Classes/FFmpeg-iOS/lib/*.a'
#           sss.source_files = 'DDReaderKernel/Kernel/Headers/*.h'
#        end
#  end

#ss.vendored_libraries = 'RanPodDemo/Classes/FFmpeg-iOS/lib/*.a'
#ss.source_files = 'RanPodDemo/Classes/FFmpeg-iOS/include/libavcodec/*.h',
#'RanPodDemo/Classes/FFmpeg-iOS/include/libavcodec/*.h',
#'RanPodDemo/Classes/FFmpeg-iOS/include/libavdevice/*.h',
#'RanPodDemo/Classes/FFmpeg-iOS/include/libavfilter/*.h',
#'RanPodDemo/Classes/FFmpeg-iOS/include/libavformat/*.h',
#'RanPodDemo/Classes/FFmpeg-iOS/include/libavutil/*.h',
#'RanPodDemo/Classes/FFmpeg-iOS/include/libswresample/*.h',
#'RanPodDemo/Classes/FFmpeg-iOS/include/libswscale/*.h'

  s.subspec 'libyuv' do |ss|
    ss.source_files = 'RanPodDemo/Classes/libyuv/*.a'
    ss.subspec 'include' do |sss|
        sss.source_files = 'RanPodDemo/Classes/libyuv/include/*.h'
        sss.subspec 'libyuv' do |ssss|
            ssss.source_files = 'RanPodDemo/Classes/libyuv/include/libyuv/*.h'
        end
    end
  end
  
  # s.resource_bundles = {
  #   'RanPodDemo' => ['RanPodDemo/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox'
   s.libraries = 'bz2', 'iconv', 'z'
  # s.dependency 'AFNetworking', '~> 2.3'
end
