# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bootstrap-extended-utilities/version"

Gem::Specification.new do |spec|
  spec.name          = "bootstrap-extended-utilities"
  spec.version       = BootstrapExtendedUtilities::VERSION
  spec.authors       = ["Mitcheljager"]
  spec.email         = ["mitchel_jager@hotmail.com"]

  spec.summary       = "An extension of Twitter's Bootstrap Utility classes"
  spec.homepage      = "https://github.com/Mitcheljager/bootstrap-extended-utilities"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
