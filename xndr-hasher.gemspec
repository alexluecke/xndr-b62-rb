# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "xndr-hasher"
  spec.version       = '0.1'
  spec.authors       = ["Alex Luecke"]
  spec.email         = ["me@alexjl.comj"]
  spec.summary       = %q{Hash module to convert integers to base 72 string}
  spec.description   = %q{Hash module to convert integers to base 72 string}
  spec.homepage      = "xndr.me"
  spec.license       = "MIT"

  spec.files         = ['lib/hasher.rb']
  spec.executables   = ['bin/hasher']
  spec.test_files    = ['tests/test_hasher.rb']
  spec.require_paths = ["lib"]
end
