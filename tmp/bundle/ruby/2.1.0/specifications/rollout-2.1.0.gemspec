# -*- encoding: utf-8 -*-
# stub: rollout 2.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rollout"
  s.version = "2.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["James Golick"]
  s.date = "2014-12-10"
  s.description = "Feature flippers with redis."
  s.email = ["jamesgolick@gmail.com"]
  s.homepage = "https://github.com/jamesgolick/rollout"
  s.rubyforge_project = "rollout"
  s.rubygems_version = "2.2.2"
  s.summary = "Feature flippers with redis."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.10.0"])
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<bourne>, ["= 1.0"])
      s.add_development_dependency(%q<mocha>, ["= 0.9.8"])
      s.add_development_dependency(%q<redis>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.10.0"])
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<bourne>, ["= 1.0"])
      s.add_dependency(%q<mocha>, ["= 0.9.8"])
      s.add_dependency(%q<redis>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.10.0"])
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<bourne>, ["= 1.0"])
    s.add_dependency(%q<mocha>, ["= 0.9.8"])
    s.add_dependency(%q<redis>, [">= 0"])
  end
end
