# -*- encoding: utf-8 -*-
# stub: github-pages 15 ruby lib

Gem::Specification.new do |s|
  s.name = "github-pages".freeze
  s.version = "15".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["GitHub, Inc.".freeze]
  s.date = "2014-02-03"
  s.description = "Bootstrap the GitHub Pages Jekyll environment locally.".freeze
  s.email = "support@github.com".freeze
  s.homepage = "https://github.com/github/pages-gem".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "2.0.3".freeze
  s.summary = "Track GitHub Pages dependencies.".freeze

  s.installed_by_version = "4.0.10".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<jekyll>.freeze, ["= 1.4.3".freeze])
  s.add_runtime_dependency(%q<kramdown>.freeze, ["= 1.3.1".freeze])
  s.add_runtime_dependency(%q<liquid>.freeze, ["= 2.5.5".freeze])
  s.add_runtime_dependency(%q<maruku>.freeze, ["= 0.7.0".freeze])
  s.add_runtime_dependency(%q<rdiscount>.freeze, ["= 2.1.7".freeze])
  s.add_runtime_dependency(%q<redcarpet>.freeze, ["= 2.3.0".freeze])
  s.add_runtime_dependency(%q<RedCloth>.freeze, ["= 4.2.9".freeze])
end
