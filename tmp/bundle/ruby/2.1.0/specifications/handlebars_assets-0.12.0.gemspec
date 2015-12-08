# -*- encoding: utf-8 -*-
# stub: handlebars_assets 0.12.0 ruby lib

Gem::Specification.new do |s|
  s.name = "handlebars_assets"
  s.version = "0.12.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Les Hill"]
  s.date = "2013-02-17"
  s.description = "Compile Handlebars templates in the Rails asset pipeline."
  s.email = ["leshill@gmail.com"]
  s.homepage = ""
  s.rubyforge_project = "handlebars_assets"
  s.rubygems_version = "2.2.2"
  s.summary = "Compile Handlebars templates in the Rails asset pipeline."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<execjs>, [">= 1.2.9"])
      s.add_runtime_dependency(%q<tilt>, [">= 0"])
      s.add_runtime_dependency(%q<sprockets>, [">= 2.0.3"])
      s.add_development_dependency(%q<debugger>, [">= 0"])
      s.add_development_dependency(%q<haml>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<slim>, [">= 0"])
    else
      s.add_dependency(%q<execjs>, [">= 1.2.9"])
      s.add_dependency(%q<tilt>, [">= 0"])
      s.add_dependency(%q<sprockets>, [">= 2.0.3"])
      s.add_dependency(%q<debugger>, [">= 0"])
      s.add_dependency(%q<haml>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<slim>, [">= 0"])
    end
  else
    s.add_dependency(%q<execjs>, [">= 1.2.9"])
    s.add_dependency(%q<tilt>, [">= 0"])
    s.add_dependency(%q<sprockets>, [">= 2.0.3"])
    s.add_dependency(%q<debugger>, [">= 0"])
    s.add_dependency(%q<haml>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<slim>, [">= 0"])
  end
end
