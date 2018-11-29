$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "ajax_error_renderer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ajax_error_renderer"
  s.version     = AjaxErrorRenderer::VERSION
  s.authors     = ["willnet"]
  s.email       = ["netwillnet@gmail.com"]
  s.homepage    = "https://github.com/willnet/ajax_error_renderer"
  s.summary     = "a friend with turbolinks and form_with"
  s.description = "validation error renderer for ajax request"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.1", ">= 5.2.1.1"

  s.add_development_dependency "sqlite3"
end
