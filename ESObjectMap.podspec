Pod::Spec.new do |s|
  s.name     = 'ESObjectMap'
  s.version  = '1.0.0'
  s.platform = :ios, '7.0'
  s.summary  = 'ESObjectMap with podspec'
  s.homepage = 'https://github.com/me/MyInternalLibrary'
  s.author   = { 'Doug Russell' => 'doug@getitdownonpaper.com' }
  s.source   = { :git => 'git@github.com:diazca/ESObjectMap.git' }
  s.license      = { :type => 'New BSD License', :file => 'LICENSE' }
  s.source_files = '*.{h,m}'
  s.requires_arc = true
end