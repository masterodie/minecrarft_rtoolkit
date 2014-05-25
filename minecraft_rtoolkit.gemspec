# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minecraft_rtoolkit/version'

Gem::Specification.new do |spec|
  spec.name          = "minecraft_rtoolkit"
  spec.version       = Minecraft::RToolkit::VERSION
  spec.authors       = ["Patrick Neff"]
  spec.email         = ["odie86@gmail.com"]
  spec.summary       = %q{A simple API wrapper for RToolkit}
  spec.description   = %q{A simple API wrapper for RToolkit (https://forums.bukkit.org/threads/admn-remotetoolkit-r10-a15-restarts-crash-detection-auto-saves-remote-console-1-7-2.674/)}
  spec.homepage      = "https://github.com/masterodie/minecraft_rtoolkit"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
