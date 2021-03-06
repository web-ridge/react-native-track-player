require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name = package["name"]
  s.version = package["version"]
  s.summary = package["description"]
  s.license = package["license"]

  s.author = "David Chavez"
  s.homepage = package["repository"]["url"]
  s.platform = :ios, "10.0"

  s.source = { :git => package["repository"]["url"], :branch => "master" }
  s.source_files = "ios/**/*.{h,m,swift}"

  s.swift_version = "5.0"
  s.exclude_files = ["ios/RNTrackPlayer/Vendor/AudioPlayer/Example"]


  s.dependency "React"
  s.dependency "SwiftAudio", "~> 0.11.0"
end
