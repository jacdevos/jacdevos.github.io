# -*- encoding: utf-8 -*-
# stub: jekyll 1.4.3 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll".freeze
  s.version = "1.4.3".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tom Preston-Werner".freeze]
  s.date = "2014-01-13"
  s.description = "Jekyll is a simple, blog aware, static site generator.".freeze
  s.email = "tom@mojombo.com".freeze
  s.executables = ["jekyll".freeze]
  s.extra_rdoc_files = ["README.markdown".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.markdown".freeze, "bin/jekyll".freeze]
  s.homepage = "http://github.com/mojombo/jekyll".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "2.0.14".freeze
  s.summary = "A simple, blog aware, static site generator.".freeze

  s.installed_by_version = "4.0.10".freeze

  s.specification_version = 2

  s.add_runtime_dependency(%q<liquid>.freeze, ["~> 2.5.5".freeze])
  s.add_runtime_dependency(%q<classifier>.freeze, ["~> 1.3".freeze])
  s.add_runtime_dependency(%q<listen>.freeze, ["~> 1.3".freeze])
  s.add_runtime_dependency(%q<maruku>.freeze, ["~> 0.7.0".freeze])
  s.add_runtime_dependency(%q<pygments.rb>.freeze, ["~> 0.5.0".freeze])
  s.add_runtime_dependency(%q<commander>.freeze, ["~> 4.1.3".freeze])
  s.add_runtime_dependency(%q<safe_yaml>.freeze, ["~> 0.9.7".freeze])
  s.add_runtime_dependency(%q<colorator>.freeze, ["~> 0.1".freeze])
  s.add_runtime_dependency(%q<redcarpet>.freeze, ["~> 2.3.0".freeze])
  s.add_runtime_dependency(%q<toml>.freeze, ["~> 0.1.0".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 10.1".freeze])
  s.add_development_dependency(%q<rdoc>.freeze, ["~> 3.11".freeze])
  s.add_development_dependency(%q<redgreen>.freeze, ["~> 1.2".freeze])
  s.add_development_dependency(%q<shoulda>.freeze, ["~> 3.3.2".freeze])
  s.add_development_dependency(%q<rr>.freeze, ["~> 1.1".freeze])
  s.add_development_dependency(%q<cucumber>.freeze, ["~> 1.3".freeze])
  s.add_development_dependency(%q<RedCloth>.freeze, ["~> 4.2".freeze])
  s.add_development_dependency(%q<kramdown>.freeze, ["~> 1.2".freeze])
  s.add_development_dependency(%q<rdiscount>.freeze, ["~> 1.6".freeze])
  s.add_development_dependency(%q<launchy>.freeze, ["~> 2.3".freeze])
  s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.7".freeze])
  s.add_development_dependency(%q<simplecov-gem-adapter>.freeze, ["~> 1.0.1".freeze])
  s.add_development_dependency(%q<coveralls>.freeze, ["~> 0.7.0".freeze])
  s.add_development_dependency(%q<mime-types>.freeze, ["~> 1.5".freeze])
  s.add_development_dependency(%q<activesupport>.freeze, ["~> 3.2.13".freeze])
  s.add_development_dependency(%q<jekyll_test_plugin>.freeze, [">= 0".freeze])
end
