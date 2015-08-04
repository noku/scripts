# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','codewars','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'codewars'
  s.version = Codewars::VERSION
  s.author = 'Peter'
  s.email = 'negrei.petru@gmail.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A codewars summary of your solutions'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','codewars.rdoc']
  s.rdoc_options << '--title' << 'codewars' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'codewars'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.13.1')
  s.add_runtime_dependency('nokogiri')
  s.add_runtime_dependency('fileutils')
  s.add_runtime_dependency('rmagick')
  s.add_runtime_dependency('json')
  s.add_runtime_dependency('html2markdown')
end
