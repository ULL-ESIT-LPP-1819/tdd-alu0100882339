require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

task :spec do
    sh "ruby -I spec/Ein_spec.rb"
end
