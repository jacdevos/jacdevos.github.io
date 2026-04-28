# -*- encoding: utf-8 -*-
# stub: classifier 1.4.4 ruby lib

Gem::Specification.new do |s|
  s.name = "classifier".freeze
  s.version = "1.4.4".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Lucas Carlson".freeze]
  s.date = "2024-07-31"
  s.description = "A general classifier module to allow Bayesian and other types of classifications.".freeze
  s.email = "lucas@rufy.com".freeze
  s.homepage = "https://github.com/cardmagic/classifier".freeze
  s.licenses = ["LGPL".freeze]
  s.rubygems_version = "3.5.9".freeze
  s.summary = "A general classifier module to allow Bayesian and other types of classifications.".freeze

  s.installed_by_version = "4.0.10".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<fast-stemmer>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<mutex_m>.freeze, ["~> 0.2".freeze])
  s.add_runtime_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<minitest>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rdoc>.freeze, [">= 0".freeze])
end
