# -*- encoding: utf-8 -*-
# stub: resque_spec 0.15.0 ruby lib

Gem::Specification.new do |s|
  s.name = "resque_spec"
  s.version = "0.15.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Les Hill"]
  s.date = "2014-02-02"
  s.description = "RSpec matchers for Resque"
  s.email = "leshill@gmail.com"
  s.homepage = "http://github.com/leshill/resque_spec"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "RSpec matchers for Resque"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<resque>, [">= 1.19.0"])
      s.add_runtime_dependency(%q<rspec-core>, [">= 2.5.0"])
      s.add_runtime_dependency(%q<rspec-expectations>, [">= 2.5.0"])
      s.add_runtime_dependency(%q<rspec-mocks>, [">= 2.5.0"])
      s.add_development_dependency(%q<resque-scheduler>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<pry-debugger>, [">= 0"])
      s.add_development_dependency(%q<timecop>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 2.10.0"])
    else
      s.add_dependency(%q<resque>, [">= 1.19.0"])
      s.add_dependency(%q<rspec-core>, [">= 2.5.0"])
      s.add_dependency(%q<rspec-expectations>, [">= 2.5.0"])
      s.add_dependency(%q<rspec-mocks>, [">= 2.5.0"])
      s.add_dependency(%q<resque-scheduler>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<pry-debugger>, [">= 0"])
      s.add_dependency(%q<timecop>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 2.10.0"])
    end
  else
    s.add_dependency(%q<resque>, [">= 1.19.0"])
    s.add_dependency(%q<rspec-core>, [">= 2.5.0"])
    s.add_dependency(%q<rspec-expectations>, [">= 2.5.0"])
    s.add_dependency(%q<rspec-mocks>, [">= 2.5.0"])
    s.add_dependency(%q<resque-scheduler>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<pry-debugger>, [">= 0"])
    s.add_dependency(%q<timecop>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 2.10.0"])
  end
end
