# -*- encoding: utf-8 -*-
# stub: pygments.rb 0.5.4 ruby lib

Gem::Specification.new do |s|
  s.name = "pygments.rb".freeze
  s.version = "0.5.4".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Aman Gupta".freeze, "Ted Nyman".freeze]
  s.date = "2013-11-03"
  s.description = "pygments.rb exposes the pygments syntax highlighter to Ruby".freeze
  s.email = ["aman@tmm1.net".freeze]
  s.homepage = "http://github.com/tmm1/pygments.rb".freeze
  s.rubygems_version = "1.8.23".freeze
  s.summary = "pygments wrapper for ruby".freeze

  s.installed_by_version = "4.0.10".freeze

  s.specification_version = 3

  s.add_runtime_dependency(%q<yajl-ruby>.freeze, ["~> 1.1.0".freeze])
  s.add_runtime_dependency(%q<posix-spawn>.freeze, ["~> 0.3.6".freeze])
  s.add_development_dependency(%q<rake-compiler>.freeze, ["~> 0.7.6".freeze])
end
