# -*- encoding: utf-8 -*-
# stub: resque-retry 1.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "resque-retry"
  s.version = "1.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Luke Antins", "Ryan Carver", "Jonathan W. Zaleski"]
  s.date = "2015-01-07"
  s.description = "  resque-retry provides retry, delay and exponential backoff support for\n  resque jobs.\n\n  Features:\n\n  * Redis backed retry count/limit.\n  * Retry on all or specific exceptions.\n  * Exponential backoff (varying the delay between retrys).\n  * Multiple failure backend with retry suppression & resque-web tab.\n  * Small & Extendable - plenty of places to override retry logic/settings.\n"
  s.email = ["luke@lividpenguin.com"]
  s.homepage = "http://github.com/lantins/resque-retry"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "A resque plugin; provides retry, delay and exponential backoff support for resque jobs."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<resque>, ["~> 1.25"])
      s.add_runtime_dependency(%q<resque-scheduler>, ["~> 4.0"])
      s.add_development_dependency(%q<rake>, ["~> 10.3"])
      s.add_development_dependency(%q<minitest>, ["~> 5.5"])
      s.add_development_dependency(%q<rack-test>, ["~> 0.6"])
      s.add_development_dependency(%q<yard>, ["~> 0.8"])
      s.add_development_dependency(%q<json>, ["~> 1.8"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.9"])
      s.add_development_dependency(%q<mocha>, ["~> 1.1"])
    else
      s.add_dependency(%q<resque>, ["~> 1.25"])
      s.add_dependency(%q<resque-scheduler>, ["~> 4.0"])
      s.add_dependency(%q<rake>, ["~> 10.3"])
      s.add_dependency(%q<minitest>, ["~> 5.5"])
      s.add_dependency(%q<rack-test>, ["~> 0.6"])
      s.add_dependency(%q<yard>, ["~> 0.8"])
      s.add_dependency(%q<json>, ["~> 1.8"])
      s.add_dependency(%q<simplecov>, ["~> 0.9"])
      s.add_dependency(%q<mocha>, ["~> 1.1"])
    end
  else
    s.add_dependency(%q<resque>, ["~> 1.25"])
    s.add_dependency(%q<resque-scheduler>, ["~> 4.0"])
    s.add_dependency(%q<rake>, ["~> 10.3"])
    s.add_dependency(%q<minitest>, ["~> 5.5"])
    s.add_dependency(%q<rack-test>, ["~> 0.6"])
    s.add_dependency(%q<yard>, ["~> 0.8"])
    s.add_dependency(%q<json>, ["~> 1.8"])
    s.add_dependency(%q<simplecov>, ["~> 0.9"])
    s.add_dependency(%q<mocha>, ["~> 1.1"])
  end
end
