Pod::Spec.new do |spec|
  spec.name = 'NimbleFox'
  spec.version = '1.0.0'
  spec.summary = 'Nimble matchers for Fox'
  spec.homepage = 'https://github.com/thoughtbot/NimbleFox'
  spec.license = { :type => 'MIT', :file => 'LICENSE' }
  spec.author = {
    'Gordon Fontenot' => 'gordon@thoughtbot.com',
    'thoughtbot' => nil,
  }
  spec.social_media_url = 'http://twitter.com/thoughtbot'
  spec.source = { :git => 'https://github.com/thoughtbot/NimbleFox.git', :tag => "v#{spec.version}" }
  spec.source_files = 'Source/**/*.{h,swift}'
  spec.requires_arc = true
  spec.ios.deployment_target = '8.0'
  spec.osx.deployment_target = '10.9'

  spec.dependency 'Nimble', '~> 0.3.0'
  spec.dependency 'Fox', '~> 1.0'
end

