# -*- encoding: utf-8 -*-
# stub: enumerate_it 1.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "enumerate_it"
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["C\u{e1}ssio Marques"]
  s.date = "2013-02-18"
  s.description = "Have a legacy database and need some enumerations in your models to match those stupid '4 rows/2 columns' tables with foreign keys and stop doing joins just to fetch a simple description? Or maybe use some integers instead of strings as the code for each value of your enumerations? Here's EnumerateIt."
  s.email = ["cassiommc@gmail.com"]
  s.homepage = "http://github.com/cassiomarques/enumerate_it"
  s.rubygems_version = "2.2.2"
  s.summary = "Ruby Enumerations"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 2.5.0"])
      s.add_development_dependency(%q<activerecord>, [">= 3.0.5"])
    else
      s.add_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 2.5.0"])
      s.add_dependency(%q<activerecord>, [">= 3.0.5"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 3.0.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 2.5.0"])
    s.add_dependency(%q<activerecord>, [">= 3.0.5"])
  end
end
