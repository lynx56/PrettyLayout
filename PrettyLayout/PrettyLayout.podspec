Pod::Spec.new do |s|
  s.name             = 'PrettyLayout'
  s.version          = '0.1.0'
  s.summary          = 'A short description of PrettyLayout.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Holyberry/PrettyLayout'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Holyberry' => '666lynx666@mail.ru' }
  s.source           = { :git => 'https://github.com/Holyberry/PrettyLayout.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'

  s.source_files = 'PrettyLayout/Classes/**/*'
  s.frameworks = 'UIKit', 'Foundation'
end
