require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

desc "Run rubycop style checks"
task :rubocop do
  sh("rubocop -f progress -f offenses lib spec bin")
end

task :default => [:rubocop, :spec]

begin
  require 'rubygems'
  require 'github_changelog_generator/task'
rescue LoadError
  # github_changelog_generator isn't available, so we won't define a rake task with it
else
  GitHubChangelogGenerator::RakeTask.new :changelog do |config|
    config.header = "# Changelog\n\nAll notable changes to this project will be documented in this file."
    config.exclude_labels = %w[duplicate question invalid wontfix wont-fix skip-changelog modulesync github_actions]
    config.user = 'voxpupuli'
    config.project = 'JSON-Grep'
    config.future_release = Gem::Specification.load('jgrep.gemspec').version
  end
end
