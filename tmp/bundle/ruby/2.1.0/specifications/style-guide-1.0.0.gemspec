# -*- encoding: utf-8 -*-
# stub: style-guide 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "style-guide"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Doc Ritezel"]
  s.date = "2013-01-12"
  s.description = "A mountable Rails engine where you curate and view your site's visual elements."
  s.email = ["doc@pivotallabs.com"]
  s.homepage = "https://github.com/pivotalexperimental/style-guide"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "A style guide for your Rails application."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 3.2"])
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.5"])
      s.add_runtime_dependency(%q<github-markdown>, ["~> 0.5"])
      s.add_development_dependency(%q<rack-livereload>, [">= 0"])
      s.add_development_dependency(%q<guard-livereload>, [">= 0"])
      s.add_development_dependency(%q<foreman>, [">= 0"])
      s.add_development_dependency(%q<rb-fsevent>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<guard-bundler>, [">= 0"])
      s.add_development_dependency(%q<terminal-notifier-guard>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["~> 3.2"])
      s.add_dependency(%q<nokogiri>, ["~> 1.5"])
      s.add_dependency(%q<github-markdown>, ["~> 0.5"])
      s.add_dependency(%q<rack-livereload>, [">= 0"])
      s.add_dependency(%q<guard-livereload>, [">= 0"])
      s.add_dependency(%q<foreman>, [">= 0"])
      s.add_dependency(%q<rb-fsevent>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<guard-bundler>, [">= 0"])
      s.add_dependency(%q<terminal-notifier-guard>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 3.2"])
    s.add_dependency(%q<nokogiri>, ["~> 1.5"])
    s.add_dependency(%q<github-markdown>, ["~> 0.5"])
    s.add_dependency(%q<rack-livereload>, [">= 0"])
    s.add_dependency(%q<guard-livereload>, [">= 0"])
    s.add_dependency(%q<foreman>, [">= 0"])
    s.add_dependency(%q<rb-fsevent>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<guard-bundler>, [">= 0"])
    s.add_dependency(%q<terminal-notifier-guard>, [">= 0"])
  end
end
