$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "homeland/jobs/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "homeland-jobs"
  s.version     = Homeland::Jobs::VERSION
  s.authors     = ["Jason Lee"]
  s.email       = ["huacnlee@gmail.com"]
  s.homepage    = "https://github.com/ruby-china/homeland-jobs"
  s.summary     = Homeland::Jobs::DESCRIPTION
  s.description = Homeland::Jobs::DESCRIPTION
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails"
end
