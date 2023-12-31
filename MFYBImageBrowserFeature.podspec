Pod::Spec.new do |s|


  s.name         = "MFYBImageBrowserFeature"

  s.version      = "3.1.4"

  s.summary      = "iOS image browser / iOS 图片浏览器"

  s.description  = <<-DESC
  					iOS 图片浏览器，功能强大，易于拓展，极致的性能优化和严格的内存控制让其运行更加的流畅和稳健。
                   DESC

  s.homepage     = "https://github.com/indulgeIn"

  s.license      = "MIT"

  s.author       = { "杨波" => "1106355439@qq.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/MoreFunTechTeam/MFYBImageBrowserFeature.git", :tag => "#{s.version}" }

  s.requires_arc = true

  s.default_subspec = "Core"

  s.subspec "Core" do |core|
    core.source_files   = "MFYBImageBrowserFeature/**/*.{h,m}"
    core.resources      = "MFYBImageBrowserFeature/YBImageBrowser.bundle"
    core.dependency 'YYImage'
    core.dependency 'SDWebImage', '>= 5.0.0'
  end
  s.subspec "NOSD" do |core|
    core.source_files   = "MFYBImageBrowserFeature/**/*.{h,m}"
    core.exclude_files  = "MFYBImageBrowserFeature/WebImageMediator/YBIBDefaultWebImageMediator.{h,m}"
    core.resources      = "MFYBImageBrowserFeature/YBImageBrowser.bundle"
    core.dependency 'YYImage'
  end

  s.subspec "Video" do |video|
    video.source_files = "Video/*.{h,m}"
    video.resources    = "Video/YBImageBrowserVideo.bundle"
    video.dependency 'MFYBImageBrowserFeature/Core'
  end
  s.subspec "VideoNOSD" do |video|
    video.source_files = "Video/*.{h,m}"
    video.resources    = "Video/YBImageBrowserVideo.bundle"
    video.dependency 'MFYBImageBrowserFeature/NOSD'
  end

end
