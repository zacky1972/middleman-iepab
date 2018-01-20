# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "middleman-iepab"
  s.version     = "0.0.4"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Susumu Yamazaki"]
  s.email       = ["zacky1972@gmail.com"]
  s.homepage    = "https://github.com/zacky1972/middleman-iepab"
  s.summary     = %q{middleman-iepab is an extension for the Middleman static site generator that invokes external pipeline after building.}
  s.description = %q{middleman-iepab is an extension for the Middleman static site generator that invokes external pipeline after building.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.license       = "MIT"
  s.required_ruby_version = '>= 2.0.0'

  # The version of middleman-core your extension depends on
  s.add_runtime_dependency("middleman-core", [">= 4.2.1"])
  
  # Additional dependencies
  # s.add_runtime_dependency("gem-name", "gem-version")
end
