Pod::Spec.new do |s|
  s.name         = "ffmpeg-kit-ios-audio"
  s.version      = "6.0"
  s.summary      = "FFmpeg Kit iOS Audio for iOS"
  s.description  = "FFmpeg Kit iOS Audio for iOS applications"
  s.homepage     = "http://10.1.1.252:3000/jieni/ffmpeg-kit"
  s.license      = { :type => "LGPL-3.0", :file => "ffmpeg-kit-ios-audio/ffmpegkit.xcframework/ios-arm64/ffmpegkit.framework/LICENSE" }
  s.author       = { "你的名字" => "你的邮箱" }
  
  s.platform     = :ios, "12.1"
  s.requires_arc = true
  s.static_framework = true
  
  s.source       = { :git => "http://10.1.1.252:3000/jieni/ffmpeg-kit.git", :tag => s.version.to_s }
  
  s.libraries = [
    "z",
    "bz2",
    "c++",
    "iconv"
  ]
  
  s.frameworks = [
    "AudioToolbox",
    "AVFoundation",
    "CoreMedia",
    "VideoToolbox"
  ]
  
  s.vendored_frameworks = [
    "ffmpeg-kit-ios-audio/ffmpegkit.xcframework",
    "ffmpeg-kit-ios-audio/libavcodec.xcframework",
    "ffmpeg-kit-ios-audio/libavdevice.xcframework",
    "ffmpeg-kit-ios-audio/libavfilter.xcframework",
    "ffmpeg-kit-ios-audio/libavformat.xcframework",
    "ffmpeg-kit-ios-audio/libavutil.xcframework",
    "ffmpeg-kit-ios-audio/libswresample.xcframework",
    "ffmpeg-kit-ios-audio/libswscale.xcframework"
  ]
end