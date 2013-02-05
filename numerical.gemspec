$:.push File.expand_path("../lib", __FILE__)
require 'numerical/version'

Gem::Specification.new do |s|
  s.name        = "numerical"
  s.version     = Numerical::VERSION
  s.authors     = ["Daniel Knell"]
  s.email       = ["contact@danielknell.co.uk"]

  s.summary     = "English language number parsing and generation for ruby"
  s.description = "Bi-Directional conversion between english language numbers (e.g.  'three hundred') and integers"
  s.homepage    = "http://github.com/artisanofcode/ruby-numerical"
  s.files       = Dir.glob("lib/**/*.rb") + ['LICENSE', 'README.md', 'bin/numerical']

  s.test_files  = Dir.glob("spec/**/*.rb")

  s.executables   = [ 'numerical' ]

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
end