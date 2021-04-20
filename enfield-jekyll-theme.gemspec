# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "enfield-jekyll-theme-website"
  spec.version       = "1.1.3"
  spec.authors       = ["Marcel Artz"]
  spec.email         = ["email@marcel-artz.de"]

  spec.summary       = "Website von Marcel Artz"
  spec.description   = "Dokumentationen über meine Projekte aus dem Bereich der IT und IT-Sicherheit."
  spec.homepage      = "https://github.com/ma744/ma744.github.io"
  spec.license       = "Exclusive Copyright"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.0")

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }


  # Core dependencies
  spec.add_runtime_dependency "bundler", "~> 2.1"
  spec.add_runtime_dependency "jekyll", "~> 4.1"

  # Other plugins by Jekyll
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.7"
  spec.add_runtime_dependency "jekyll-mentions", "~> 1.6"
  spec.add_runtime_dependency "jekyll-gist", "~> 1.5"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.15"
  spec.add_runtime_dependency "jekyll-redirect-from", "~> 0.16"
  # jekyll-sitemap should be last item of plugin list : https://github.com/jekyll/jekyll-sitemap
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"

  # Third party plugins
  spec.add_runtime_dependency "jekyll-analytics", "~> 0.1"

end

