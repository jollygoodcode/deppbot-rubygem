# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'deppbot/version'

Gem::Specification.new do |spec|
  spec.name          = "deppbot"
  spec.version       = Deppbot::VERSION
  spec.authors       = ["Juanito Fatas", "Winston Teo Yong Wei"]
  spec.email         = ["katehuang0320+deppbot@gmail.com", "winston.yongwei+deppbot@gmail.com"]

  spec.summary       = %(deppbot - Automated Security and Dependency Updates for Ruby Apps)
  spec.description   = %(deppbot ensures that your Ruby applications are kept updated, always! Based on your configured schedule, deppbot will run bundle update on your Ruby app and send the result as a Pull Request to GitHub. deppbot will also check your app periodically for any RubyGem vulnerabilities and fix it automagically. As seen on https://github.com/integrations/deppbot, http://stackshare.io/deppbot/deppbot, and https://www.siftery.com/deppbot.)
  spec.homepage      = "https://www.deppbot.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
