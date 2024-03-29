# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "eco"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sam Stephenson"]
  s.date = "2011-06-04"
  s.description = "    Ruby Eco is a bridge to the official JavaScript Eco compiler.\n"
  s.email = "sstephenson@gmail.com"
  s.homepage = "https://github.com/sstephenson/ruby-eco"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Ruby Eco Compiler (Embedded CoffeeScript templates)"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<coffee-script>, [">= 0"])
      s.add_runtime_dependency(%q<eco-source>, [">= 0"])
      s.add_runtime_dependency(%q<execjs>, [">= 0"])
    else
      s.add_dependency(%q<coffee-script>, [">= 0"])
      s.add_dependency(%q<eco-source>, [">= 0"])
      s.add_dependency(%q<execjs>, [">= 0"])
    end
  else
    s.add_dependency(%q<coffee-script>, [">= 0"])
    s.add_dependency(%q<eco-source>, [">= 0"])
    s.add_dependency(%q<execjs>, [">= 0"])
  end
end
