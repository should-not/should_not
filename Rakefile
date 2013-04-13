require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'stringio'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

task :rspec do
  require 'rspec/core'
  err = StringIO.new
  out = StringIO.new
  RSpec::Core::Runner.run([integration_file('rspec')], err, out)

  assert_contains!(out.string, '6 examples, 2 failures')
end

INTEGRATION_DIR = File.expand_path(File.join(File.dirname(__FILE__), 'integration'))

def integration_file(filename)
  filename << '.rb' unless filename.end_with?('.rb')
  File.join(INTEGRATION_DIR, filename)
end

def assert_contains!(actual, expected)
  unless actual.include?(expected)
    abort("Expected (<<OUTPUT\n#{actual}\nOUTPUT)\n to include #{expected}")
  end
end