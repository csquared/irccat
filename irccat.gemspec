# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "irccat/version"

Gem::Specification.new do |s|
  s.name        = "irccat"
  s.version     = IrcCat::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["people"]
  s.email       = ["folks"]
  s.homepage    = ""
  s.summary     = %q{Write a gem summary}
  s.description = %q{Write a gem description}

  s.rubyforge_project = "irccat"
  
  s.add_dependency 'rack'
  s.add_dependency 'json'
  s.add_dependency 'mongrel'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
