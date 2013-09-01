# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "stopwatch_formatter"
  spec.version       = "1.0.0"
  spec.authors       = ["Tamara Temple"]
  spec.email         = ["tamouse@gmail.com"]
  spec.description   = %q{The standard RSpec documentation formatter does not display the amount of time each test took. This formatter provides that information}
  spec.summary       = %q{Show test duration in output}
  spec.homepage      = "http://github.com/tamouse/rspec_stopwatch_formatter"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
