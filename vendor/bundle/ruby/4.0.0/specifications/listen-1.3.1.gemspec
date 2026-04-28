# -*- encoding: utf-8 -*-
# stub: listen 1.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "listen".freeze
  s.version = "1.3.1".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Thibaud Guillaume-Gentil".freeze, "Maher Sallam".freeze]
  s.date = "2013-09-07"
  s.description = "The Listen gem listens to file modifications and notifies you about the changes. Works everywhere!".freeze
  s.email = ["thibaud@thibaud.me".freeze, "maher@sallam.me".freeze]
  s.homepage = "https://github.com/guard/listen".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.0.7".freeze
  s.summary = "Listen to file modifications".freeze

  s.installed_by_version = "4.0.10".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<rb-fsevent>.freeze, [">= 0.9.3".freeze])
  s.add_runtime_dependency(%q<rb-inotify>.freeze, [">= 0.9".freeze])
  s.add_runtime_dependency(%q<rb-kqueue>.freeze, [">= 0.2".freeze])
  s.add_development_dependency(%q<bundler>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, [">= 0".freeze])
end
