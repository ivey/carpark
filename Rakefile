#
#  carpark/Rakefile
#
#  Created by Bryce Kerley.
#  This code is public domain.
require 'rake'
require 'rake/testtask'
require 'rake/gempackagetask'
require 'rubygems'

ID = "$Id: Rakefile 26 2007-03-17 20:28:23Z bkerley $"
GEM_VERSION = ID.split[2]

#this will probably fail in win32
HOMEDIR = ENV['HOME']

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.verbose = true
  t.pattern = 'tests/**/*_test.rb'
end

task :default => :test

spec = Gem::Specification.new do |s|
	s.platform = Gem::Platform::RUBY
	s.summary = "car and cdr array functions"
	s.name = 'Carpark'
	s.author = "Bryce Kerley"
	s.email = "bkerley@brycekerley.net"
	s.version = GEM_VERSION
	s.requirements << 'none'
	s.add_dependency 'rake'
	s.require_path = 'lib'
	s.autorequire = 'carpark'
 	s.files = FileList["{lib,tests}/*"].to_a + ["Rakefile"]
	s.signing_key = ENV['HOME']+'/.rubygems/gem-private_key.pem'
	s.cert_chain = ['bkerley-public_cert.pem']
	s.description = <<EOF
Carpark provides LISP-inspired variants of car and cdr (cadr, caddar, and so on).
It uses method_missing to ensure that no matter what combination you want, it's available.
EOF
end

Rake::GemPackageTask.new(spec) do |pkg|
	pkg.need_zip = true
	pkg.need_tar = true
end
