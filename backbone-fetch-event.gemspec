# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'backbone-fetch-event/version'

Gem::Specification.new do |gem|
  gem.name          = "backbone-fetch-event"
  gem.version       = BackboneFetchEvent::VERSION
  gem.authors       = ["Tim Branyen", "Todd Eichel"]
  gem.email         = ["tim@tabdeveloper.com", "todd@toddeichel.com"]
  gem.description   = %q{Code by Tim Branyen (http://tbranyen.com/post/how-to-indicate-backbone-fetch-progress). Packaged by Todd Eichel.}
  gem.summary       = %q{Triggers an event when a Model or Collection starts a fetch.}
  gem.homepage      = "https://github.com/tfe/backbone-fetch-event"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
