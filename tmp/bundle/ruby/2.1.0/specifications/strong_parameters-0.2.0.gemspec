# -*- encoding: utf-8 -*-
# stub: strong_parameters 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "strong_parameters"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["David Heinemeier Hansson"]
  s.date = "2013-02-18"
  s.email = ["david@heinemeierhansson.com"]
  s.homepage = "https://github.com/rails/strong_parameters"
  s.rubygems_version = "2.2.2"
  s.summary = "Permitted and required parameters for Action Pack"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<actionpack>, ["~> 3.0"])
      s.add_runtime_dependency(%q<activemodel>, ["~> 3.0"])
      s.add_runtime_dependency(%q<railties>, ["~> 3.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<mocha>, ["~> 0.12.0"])
    else
      s.add_dependency(%q<actionpack>, ["~> 3.0"])
      s.add_dependency(%q<activemodel>, ["~> 3.0"])
      s.add_dependency(%q<railties>, ["~> 3.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<mocha>, ["~> 0.12.0"])
    end
  else
    s.add_dependency(%q<actionpack>, ["~> 3.0"])
    s.add_dependency(%q<activemodel>, ["~> 3.0"])
    s.add_dependency(%q<railties>, ["~> 3.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<mocha>, ["~> 0.12.0"])
  end
end
