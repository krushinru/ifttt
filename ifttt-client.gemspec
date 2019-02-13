$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'ifttt-client'
  s.version     = '1.0.1'
  s.date        = '2019-02-08'
  s.summary     = 'IFTTT - Simple IFTTT integration'
  s.description = 'Simple gem for IFTTT integration.'
  s.author      = 'Alexander Krushin'
  s.email       = 'alex@krushin.ru'
  s.homepage    = 'https://github.com/krushinru/ifttt'
  s.license     = 'MIT'
  s.files       = `git ls-files`.split("\n")
end
