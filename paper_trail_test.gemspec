# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name          = 'paper_trail_test'
  s.version       = '0.1'
  s.authors       = ['Dillon Welch']
  s.email         = ['dwelch@q-centrix.com']
  s.summary       = 'Minimal example of a paper_trail bug'
  s.license       = 'Proprietary'

  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(/^bin\//) { |f| File.basename(f) }
  s.test_files    = s.files.grep(/^(test|spec|features)\//)
  s.require_paths = ['lib']

  s.add_dependency 'activerecord'
  s.add_dependency 'paper_trail'

  s.add_development_dependency 'bundler', '~> 1.10'
  s.add_development_dependency 'pg'
  s.add_development_dependency 'rake',    '~> 10.0'
  s.add_development_dependency 'rspec'

  s.required_ruby_version = '~> 2.2'
end
