require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "tallakt-picopc"
    gem.summary = %Q{Pico OPC: very tiny OPc implementation for Ruby}
    gem.description = %Q{A simple DCOM OPC library for ruby that allows simple access to OPC servers but with poor efficiency}
    gem.email = "tallak@tveide.net"
    gem.homepage = "http://github.com/tallakt/picopc"
    gem.authors = ["Tallak Tveide"]
    gem.add_development_dependency "rspec", ">= 1.2.9"
    gem.required_ruby_version = '>= 1.9.0'
    gem.requirements << 'To run tests, you must install Matrikon OPC Simulator'
    gem.requirements << 'PicOpc will only run on Windows systems due to DCOM dependency'
    # generates an error, no big deal
    # gem.platform = Gem::Platform::WIN32
    gem.rdoc_options << '--title' << 'PicOpc -- Tiny Ruby OPC' <<
                           '--main' << 'README.rdoc' <<
                                                  '--line-numbers'



    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "picopc #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
