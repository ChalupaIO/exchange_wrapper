
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "exchange_wrapper/version"

Gem::Specification.new do |spec|
  spec.name          = "exchange_wrapper"
  spec.version       = ExchangeWrapper::VERSION
  spec.authors       = ["Eric Walsh"]
  spec.email         = ["ericmatthewwalsh@gmail.com"]

  spec.summary       = %q{Standardized wrapper around the different cryptocurrency exchanges.}
  spec.description   = %q{Creates a wrapper around the account parsing functions and the exchange price functions for usage in Carnitas and Carne Asada.}
  spec.homepage      = "https://github.com/ericmwalsh/exchange_wrapper"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency             "rails", "~> 5.1"

  spec.add_dependency             "faraday", "~> 0.14"
  spec.add_dependency             "faraday_middleware", "~> 0.12"
  spec.add_dependency             "httparty", "~> 0.16"

  spec.add_dependency             "coinbase", "~> 4.2"
  spec.add_dependency             "coinbase-exchange", "~> 0.2" # gdax

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "byebug"
end
