require 'rake/clean'
require 'spec/rake/spectask'

task :default => [:test]

task :test => :spec

Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['test/*_spec.rb']
end
