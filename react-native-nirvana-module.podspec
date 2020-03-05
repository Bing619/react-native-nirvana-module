require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-nirvana-module"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-nirvana-module
                   DESC
  s.homepage     = "https://github.com/Bing619/react-native-nirvana-module"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "zbb" => "bing.zhu@nirvana-info.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/Bing619/react-native-nirvana-module.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  # ...
  # s.dependency "..."
end

