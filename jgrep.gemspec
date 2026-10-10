require 'date'
require_relative 'lib/parser/version'

Gem::Specification.new do |s|
    s.name = 'jgrep'

    s.version = JGrep::VERSION
    s.date = Date.today.to_s

    s.authors = ['Vox Pupuli']
    s.email = ['voxpupuli@groups.io']
    s.summary = 'Filter JSON documents with a simple logical language'
    s.description = 'Compare a list of json documents to a simple logical language and returns matches as output'
    s.homepage = 'https://github.com/voxpupuli/JSON-Grep'
    s.license = 'Apache-2.0'
    s.required_ruby_version = '>= 3.3'

    s.files = `git ls-files`.split("\n") - Dir[".*", "Gem*", "*.gemspec"]
    s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
    s.require_paths = ["lib"]

    s.add_development_dependency 'rake', '~> 13.2'
    s.add_development_dependency 'rspec', '~> 3.13'
    s.add_development_dependency 'mocha', '~> 3.1'
    s.add_development_dependency 'voxpupuli-rubocop', '~> 5.3.0'
end
