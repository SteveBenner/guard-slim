# -*- encoding: utf-8 -*-
# stub: guard-slim 0.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "guard-slim"
  s.version = '0.0.3'

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ['Indrek Juhkam', 'Stephen Benner']
  s.date = "2014-02-12"
  s.description = ""
  s.email = ["indrek@urgas.eu"]
  s.files = [".gitignore", ".ruby-gemset", ".travis.yml", "Gemfile", "Gemfile.lock", "README.md",
             "Rakefile", "guard-slim.gemspec", "lib/guard/slim.rb", "lib/guard/slim/template.rb",
             "lib/guard/slim/template_renderer.rb", "lib/guard/slim/templates/Guardfile",
             "lib/guard/slim/version.rb", "spec/guard/slim_spec.rb", "spec/spec_helper.rb"]
  s.homepage = ""
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.1.10"
  s.summary = "Guard gem for slim"
  s.test_files = ["spec/guard/slim_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>, [">= 1.0"])
      s.add_runtime_dependency(%q<slim>, [">= 0"])
    else
      s.add_dependency(%q<guard>, [">= 1.0"])
      s.add_dependency(%q<slim>, [">= 0"])
    end
  else
    s.add_dependency(%q<guard>, [">= 1.0"])
    s.add_dependency(%q<slim>, [">= 0"])
  end
end
