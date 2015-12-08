# -*- encoding: utf-8 -*-
# stub: guard-konacha 0.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "guard-konacha"
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Alex Gibbons"]
  s.date = "2013-03-12"
  s.description = "Automatically run konacha tests"
  s.email = ["alex.gibbons@gmail.com"]
  s.homepage = "https://github.com/alexgb/guard-konacha"
  s.rdoc_options = ["--charset=UTF-8", "--main=README.md", "--exclude='lib|Gemfile'"]
  s.rubygems_version = "2.2.2"
  s.summary = "Guard gem for Konacha"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>, ["~> 1.1"])
      s.add_runtime_dependency(%q<konacha>, [">= 2.3"])
      s.add_runtime_dependency(%q<activesupport>, [">= 2.2"])
      s.add_runtime_dependency(%q<childprocess>, [">= 0.2.5"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<timecop>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<guard>, ["~> 1.1"])
      s.add_dependency(%q<konacha>, [">= 2.3"])
      s.add_dependency(%q<activesupport>, [">= 2.2"])
      s.add_dependency(%q<childprocess>, [">= 0.2.5"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<timecop>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<guard>, ["~> 1.1"])
    s.add_dependency(%q<konacha>, [">= 2.3"])
    s.add_dependency(%q<activesupport>, [">= 2.2"])
    s.add_dependency(%q<childprocess>, [">= 0.2.5"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<timecop>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end
