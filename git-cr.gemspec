# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'git-cr/version'

Gem::Specification.new do |gem|
  gem.name          = "git-cr"
  gem.version       = GitCR::VERSION
  gem.authors       = ["Zachary Bush"]
  gem.email         = ["zach@zmbush.com"]
  gem.description   = %q{Ruby bindings for coffeelint}
  gem.summary       = %q{Ruby bindings for coffeelint along with railtie to add rake task to rails}
  gem.homepage      = "https://github.com/zmbush/git-cr"
  gem.licenses      = ["MIT"]

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rake'

  gem.add_dependency 'octokit'
end
