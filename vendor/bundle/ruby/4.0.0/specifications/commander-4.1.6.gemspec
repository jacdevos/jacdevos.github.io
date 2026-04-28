# -*- encoding: utf-8 -*-
# stub: commander 4.1.6 ruby lib

Gem::Specification.new do |s|
  s.name = "commander".freeze
  s.version = "4.1.6".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["TJ Holowaychuk".freeze, "Gabriel Gilder".freeze]
  s.date = "2014-02-11"
  s.description = "The complete solution for Ruby command-line executables. Commander bridges the gap between other terminal related libraries you know and love (OptionParser, HighLine), while providing many new features, and an elegant API.".freeze
  s.email = ["ggilder@tractionco.com".freeze]
  s.executables = ["commander".freeze]
  s.files = ["bin/commander".freeze]
  s.homepage = "http://visionmedia.github.com/commander".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.2.1".freeze
  s.summary = "The complete solution for Ruby command-line executables".freeze

  s.installed_by_version = "4.0.10".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<highline>.freeze, ["~> 1.6.11".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 2".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<simplecov>.freeze, [">= 0".freeze])
end
