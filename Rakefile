require 'rubygems'
require 'rake'

begin
  require 'rspec/core/rake_task'
rescue MissingSourceFile
  raise "You need RSpec 2.0 or better for development on this gem."
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "ActsAsReputable"
    gem.summary = %Q{TODO: one-line summary of your gem}
    gem.description = %Q{TODO: longer description of your gem}
    gem.email = "ccmbrulak@yahoo.ca"
    gem.homepage = "http://github.com/cbrulak/ActsAsReputable"
    gem.authors = ["Chris Brulak"]
    gem.add_development_dependency "rspec", ">= 2.0.0.beta"
    gem.add_development_dependency 'genspec', '>= 0.2.0.prerails3.2'
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

#require 'spec/rake/spectask'

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "ActsAsReputable #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
