require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'stringio'

RSpec::Core::RakeTask.new(:spec)

task :default => [:spec, :integration]

desc 'Run specs against RSpec'
task :rspec do
  require 'rspec/core'
  err = StringIO.new
  out = StringIO.new
  RSpec::Core::Runner.run([integration_file('rspec')], err, out)

  assert_contains!(out.string, '5 examples, 2 failures')
  puts "RSpec integration spec passed"
end

desc 'Run specs against MiniTest'
task :minitest do
  require 'rbconfig'
  ruby = File.join(RbConfig::CONFIG['bindir'], RbConfig::CONFIG['ruby_install_name'])
  output = `#{ruby} #{integration_file('minitest')}`

  assert_contains!(output, '6 runs')
  assert_contains!(output, '2 failures')
  puts "MiniTest integration spec passed"
end

desc 'Run all integration specs'
task :integration => [:rspec, :minitest] do
  puts "All integration specs passed!"
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
