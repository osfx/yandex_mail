require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

desc "Run cli application"
task :run do
	system("bundle exec exe/yandex_mail")
end
