Pod::Spec.new do |s|
  s.name         = "HSPNumberPadInputView"
  s.version      = "0.0.1"
  s.summary      = "Calculator-like number input interface"

  s.description  = <<-DESC
                   Features 10 fully functioning digit buttons, a decimal point and a clear button.
                   Use with ReactiveCocoa recommended.
                   DESC

  s.homepage     = "http://EXAMPLE/HSPNumberPadInputView"
  s.license      = "MIT"
  s.author             = { "Hok Shun Poon" => "hok@hokshunpoon.me" }
  s.platform     = :ios, "7.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"

  s.source       = { :git => "http://EXAMPLE/HSPNumberPadInputView.git", :tag => "0.0.1" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.resources = "Classes/**/*.xib"
  s.dependency 'FlatButtons'
  s.dependency 'ReactiveCocoa'
end
