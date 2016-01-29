# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "xndr-b62"
  spec.version       = '0.1'
  spec.authors       = ["Alex Luecke"]
  spec.email         = ["me@alexjl.comj"]
  spec.summary       = %q{Module to map intenger to b62 string and vice-versa.}
  spec.description   = %q{Module to map intenger to b62 string and vice-versa.}
  spec.homepage      = "xndr.me"
  spec.license       = "MIT"

  spec.files         = ['lib/xndr-b62.rb']
  spec.executables   = ['bin/xndr-b62']
  spec.test_files    = ['tests/test_b62.rb']
  spec.require_paths = ["lib"]
end
