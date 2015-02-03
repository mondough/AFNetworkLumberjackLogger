Pod::Spec.new do |s|
  s.name     = 'AFNetworkLumberjackLogger'
  s.version  = '2.0.4'
  s.license  = 'MIT'
  s.summary  = 'AFNetworking 2.0 Extension for Network Request Logging with Cocoa Lumberjack'
  s.homepage = 'https://github.com/RomainBoulay/AFNetworkLumberjackLogger'
  s.authors  = { 'Romain Boulay' => 'romain.boulay@gmail.com' }
  s.source   = { :git => 'https://github.com/RomainBoulay/AFNetworkLumberjackLogger.git', :tag => "lumberjack-" + s.version.to_s }
  s.source_files = 'AFNetworkLumberjackLogger'
  s.requires_arc = true
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'

  s.dependency 'AFNetworking/NSURLSession', '~> 2.0'
  s.dependency 'AFNetworking/NSURLConnection', '~> 2.0'
  s.dependency 'CocoaLumberjack'
end
