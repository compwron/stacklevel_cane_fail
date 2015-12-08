# -*- encoding: utf-8 -*-
# stub: resque-cleaner 0.2.12 ruby lib

Gem::Specification.new do |s|
  s.name = "resque-cleaner"
  s.version = "0.2.12"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Tatsuya Ono"]
  s.date = "2013-12-03"
  s.description = "    resque-cleaner maintains the cleanliness of failed jobs on Resque.\n"
  s.email = "ononoma@gmail.com"
  s.extra_rdoc_files = ["LICENSE", "README.md", "CHANGELOG.md"]
  s.files = ["CHANGELOG.md", "LICENSE", "README.md"]
  s.homepage = "https://github.com/ono/resque-cleaner"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.rubygems_version = "2.2.2"
  s.summary = "Resque plugin cleaning up failed jobs."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<resque>, ["~> 1.0"])
    else
      s.add_dependency(%q<resque>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<resque>, ["~> 1.0"])
  end
end
