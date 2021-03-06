# -*- encoding: utf-8 -*-
# stub: konacha 2.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "konacha"
  s.version = "2.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["John Firebaugh"]
  s.date = "2013-05-06"
  s.description = "Konacha is a Rails engine that allows you to test your JavaScript with the\nmocha test framework and chai assertion library.\n\nIt is similar to Jasmine and Evergreen, but does not attempt to be framework\nagnostic. By sticking with Rails, Konacha can take full advantage of features such as\nthe asset pipeline and engines."
  s.email = ["john.firebaugh@gmail.com"]
  s.homepage = "http://github.com/jfirebaugh/konacha"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Unit-test your Rails JavaScript with the mocha test framework and chai assertion library"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, ["< 5", ">= 3.1"])
      s.add_runtime_dependency(%q<actionpack>, ["< 5", ">= 3.1"])
      s.add_runtime_dependency(%q<sprockets>, [">= 0"])
      s.add_runtime_dependency(%q<capybara>, [">= 0"])
      s.add_runtime_dependency(%q<colorize>, [">= 0"])
      s.add_development_dependency(%q<jquery-rails>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.12"])
      s.add_development_dependency(%q<capybara-firebug>, ["~> 1.1"])
      s.add_development_dependency(%q<coffee-script>, [">= 0"])
      s.add_development_dependency(%q<ejs>, [">= 0"])
      s.add_development_dependency(%q<tzinfo>, [">= 0"])
      s.add_development_dependency(%q<poltergeist>, ["~> 1.0.2"])
    else
      s.add_dependency(%q<railties>, ["< 5", ">= 3.1"])
      s.add_dependency(%q<actionpack>, ["< 5", ">= 3.1"])
      s.add_dependency(%q<sprockets>, [">= 0"])
      s.add_dependency(%q<capybara>, [">= 0"])
      s.add_dependency(%q<colorize>, [">= 0"])
      s.add_dependency(%q<jquery-rails>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, ["~> 2.12"])
      s.add_dependency(%q<capybara-firebug>, ["~> 1.1"])
      s.add_dependency(%q<coffee-script>, [">= 0"])
      s.add_dependency(%q<ejs>, [">= 0"])
      s.add_dependency(%q<tzinfo>, [">= 0"])
      s.add_dependency(%q<poltergeist>, ["~> 1.0.2"])
    end
  else
    s.add_dependency(%q<railties>, ["< 5", ">= 3.1"])
    s.add_dependency(%q<actionpack>, ["< 5", ">= 3.1"])
    s.add_dependency(%q<sprockets>, [">= 0"])
    s.add_dependency(%q<capybara>, [">= 0"])
    s.add_dependency(%q<colorize>, [">= 0"])
    s.add_dependency(%q<jquery-rails>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, ["~> 2.12"])
    s.add_dependency(%q<capybara-firebug>, ["~> 1.1"])
    s.add_dependency(%q<coffee-script>, [">= 0"])
    s.add_dependency(%q<ejs>, [">= 0"])
    s.add_dependency(%q<tzinfo>, [">= 0"])
    s.add_dependency(%q<poltergeist>, ["~> 1.0.2"])
  end
end
