require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = 'react-native-locale-detector'
  s.version        = package['version']
  s.summary        = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = 'https://github.com/orda/react-native-locale-detector'
  s.source         = { :git => 'https://github.com/orda/react-native-locale-detector.git', :tag => s.version }

  s.requires_arc   = true
  s.platform       = :ios, '9.0'

  s.preserve_paths = 'LICENSE', 'README.md'
  s.source_files   = 'RNI18n/**/*.{h,m}'

  s.dependency 'React'
end
