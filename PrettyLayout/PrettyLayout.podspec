Pod::Spec.new do |s|
  s.name             = 'PrettyLayout'
  s.version          = '1.0.0'
  s.summary          = 'Power of auto layout with extra lightweight framework'
  s.description      = <<-DESC
	Set up your Auto Layout constraints with simple functions
                       DESC

  s.homepage         = 'https://github.com/Holyberry/PrettyLayout'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Holyberry' => '666lynx666@mail.ru' }
  s.source           = { :git => 'https://github.com/Holyberry/PrettyLayout.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'

  s.source_files = 'Source/**/*'
  s.frameworks = 'UIKit', 'Foundation'
end
