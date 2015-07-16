$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |spec|
  spec.name                      = "foreign_exchange_david"
  spec.version                   = "1.0"
  spec.author                    = ["David De"]
  spec.email                     = ["daviddecoding@gmail.com"]
  spec.homepage                  = "https://github.com/DavidDeCoding/foreign_exchange_david"
  spec.summary                   = %q{Covert from currency to another}
  spec.description               = %q{Using Yahoo finance api converts currencies.}

  spec.add_runtime_dependency 'unirest', '~> 1.1', '>= 1.1.2'
  spec.add_development_dependency 'rpsec', '~> 3.0', '>= 3.0.0'
  spec.add_development_dependency 'guard-rspec', '~> 4.2', '>= 4.2.10'

  spec.files                     = `git ls-files`.split("\n")
  spec.test_files                = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.require_paths             = ["lib"]
end 
