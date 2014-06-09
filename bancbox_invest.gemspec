Gem::Specification.new do |s|
  s.name        = 'bancbox_invest'
  s.version     = '0.0.1'
  s.date        = '2014-05-04'
  s.summary     = 'Bancbox Invest'
  s.description = 'Bancbox Invest ruby api wrapper'
  s.authors     = ['Maksim Berjoza']
  s.email       = 'maksim.berjoza@gmail.com'
  s.files       = ['lib/bancbox_invest.rb']
  s.homepage    = 'https://github.com/torbjon/bancbox_invest'
  s.license     = 'MIT'

  s.add_dependency 'httparty', '~> 0.13'
  s.add_dependency 'json', '~> 1.8'
  s.add_dependency 'activesupport', '~> 4'
  s.add_development_dependency 'bundler', '~> 1.0'
end
