# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'senotify/version'

Gem::Specification.new do |spec|
  spec.name          = 'senotify'
  spec.license       = 'GPL-3.0'
  spec.version       = Senotify::VERSION
  spec.authors       = ['Alex L. Demidov']
  spec.email         = ['alexeydemidov@gmail.com']

  spec.summary       = 'Fetches Stack Exchange questions and sends system notifications '
  spec.description   = <<-EOF
This script fetches a list of the new questions from a Stack Exchange website, prints them out to terminal and sends desktop system notification to user.
EOF
  spec.homepage      = 'https://github.com/AlexeyDemidov/senotify'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency('methadone', '~> 1.9.2')
  spec.add_runtime_dependency 'htmlentities', '~> 4.3.4'
  spec.add_runtime_dependency 'ruby-stackoverflow'
  spec.add_runtime_dependency 'dotenv'
  spec.add_development_dependency 'bundler', '~> 1.0'
  spec.add_development_dependency 'rake', '>= 12.3.3'
  spec.add_development_dependency('rdoc')
  spec.add_development_dependency('aruba')
  spec.add_development_dependency('pry')
  spec.add_development_dependency('awesome_print')
  spec.add_development_dependency('test-unit')
  spec.add_development_dependency('rspec', '~> 3')
end
