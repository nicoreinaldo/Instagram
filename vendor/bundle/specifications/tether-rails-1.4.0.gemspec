# -*- encoding: utf-8 -*-
# stub: tether-rails 1.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "tether-rails"
  s.version = "1.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jake Gavin"]
  s.bindir = "exe"
  s.date = "2017-02-27"
  s.email = ["jakegavin@gmail.com"]
  s.homepage = "https://github.com/jakegavin/tether-rails"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "tether-rails wraps the Tether JavaScript library so that it can easily be included in Rails."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.1"])
      s.add_development_dependency(%q<bundler>, ["~> 1.11"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
    else
      s.add_dependency(%q<rails>, [">= 3.1"])
      s.add_dependency(%q<bundler>, ["~> 1.11"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.1"])
    s.add_dependency(%q<bundler>, ["~> 1.11"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
  end
end
