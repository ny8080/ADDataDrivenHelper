#
# Be sure to run `pod lib lint TDFDataDrivenHelper.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TDFDataDrivenHelper'
  s.version          = '0.1.2'

  # basic 基础组件 
  # weakbusiness 弱业务组件
  # business 业务组件
  
  s.summary          = 'basic  TDFDataDrivenHelper.'

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
 TDFDataDrivenHelper TDFDataDrivenHelper
                       DESC

  s.homepage         = 'http://git.2dfire.net/ios/TDFDataDrivenHelper'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tripleCC' => 'qingmu@2dfire.com' }
  s.source           = { :git => 'http://git.2dfire.net/ios/TDFDataDrivenHelper.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  
  tdfire_source_configurator = lambda do |s|
    # 源码依赖配置
    s.source_files = 'TDFDataDrivenHelper/Classes/**/*'
    s.public_header_files = 'TDFDataDrivenHelper/Classes/**/*.{h}'
    # s.private_header_files = 

    # 资源依赖必须使用 bundle
    # s.resource_bundles = {
    #     'TDFDataDrivenHelper' => ['TDFDataDrivenHelper/Assets/*']
    # }

    s.dependency 'TDFDataDrivenKit'
    s.dependency 'Masonry'
    s.dependency 'TDFCategories/UIColor'
    s.dependency 'TDFDataDrivenBaseItems'
    s.dependency 'TDFBatchOperation'
    s.dependency 'TDFCategories'

  end

  unless %w[tdfire_set_binary_download_configurations tdfire_source tdfire_binary].reduce(true) { |r, m| s.respond_to?(m) & r }    
    tdfire_source_configurator.call s
  else
    s.tdfire_source tdfire_source_configurator
    s.tdfire_binary tdfire_source_configurator

    #s.tdfire_binary tdfire_source_configurator do |s|
    # 额外配置 (一般不用)
    #end

    s.tdfire_set_binary_download_configurations
  end
end
