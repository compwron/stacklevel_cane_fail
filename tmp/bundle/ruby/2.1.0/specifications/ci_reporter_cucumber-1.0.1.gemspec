# -*- encoding: utf-8 -*-
# stub: ci_reporter_cucumber 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "ci_reporter_cucumber"
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Nick Sieger", "Jake Goulding"]
  s.date = "2015-08-06"
  s.email = ["nick@nicksieger.com", "jake.goulding@gmail.com"]
  s.homepage = "https://github.com/ci-reporter/ci_reporter_cucumber"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Connects CI::Reporter to Cucumber"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<cucumber>, ["~> 1.3.3"])
      s.add_runtime_dependency(%q<ci_reporter>, ["~> 2.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.6"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<rspec-collection_matchers>, [">= 0"])
      s.add_development_dependency(%q<ci_reporter_test_utils>, [">= 0"])
    else
      s.add_dependency(%q<cucumber>, ["~> 1.3.3"])
      s.add_dependency(%q<ci_reporter>, ["~> 2.0"])
      s.add_dependency(%q<bundler>, ["~> 1.6"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<rspec-collection_matchers>, [">= 0"])
      s.add_dependency(%q<ci_reporter_test_utils>, [">= 0"])
    end
  else
    s.add_dependency(%q<cucumber>, ["~> 1.3.3"])
    s.add_dependency(%q<ci_reporter>, ["~> 2.0"])
    s.add_dependency(%q<bundler>, ["~> 1.6"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<rspec-collection_matchers>, [">= 0"])
    s.add_dependency(%q<ci_reporter_test_utils>, [">= 0"])
  end
end
