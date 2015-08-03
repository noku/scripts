# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','mini','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'mini'
  s.version = Mini::VERSION
  s.author = 'Peter'
  s.email = 'negrei.petru@gmail.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A image dowloader from minitokyo gallery website'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','mini.rdoc']
  s.rdoc_options << '--title' << 'mini' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'mini'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('pry')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.13.1')
  s.add_runtime_dependency('mechanize')
  s.add_runtime_dependency('colorize')
  s.add_runtime_dependency('highline')
end
