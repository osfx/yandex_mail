$LOAD_PATH.unshift File.join(File.dirname(__FILE__), 'lib')
require "version"

Gem::Specification.new do |s|
  s.name        = "yamail"
  s.version     = Yamail::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Peter Boriskin"]
  s.email       = ["x66w@ya.ru"]
  s.homepage    = "http://github.com/sanata-/yamail"
  s.license     = "MIT"
  s.add_dependency "actionmailer", "~> 3.0", ">= 3.0.7"


  s.summary     = %q{Send your email over Yandex SMTP server}
  s.description = %q{Send emails using a given yandex mail account. Only username/passwords needed.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/yamail`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.required_ruby_version = '>= 1.9.3'
end
