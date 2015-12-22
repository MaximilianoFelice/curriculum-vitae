$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "admin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "admin"
  s.version     = Admin::VERSION
  s.authors     = ["Maximiliano Felice"]
  s.email       = ["maximilianofelice@gmail.com"]
  s.homepage    = ""
  s.summary     = "Admin Panel"
  s.description = "CV - Admin Panel"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"

  s.add_development_dependency "pg"

  s.add_dependency "godmin", "~> 1.1.0"
end

