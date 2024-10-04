# date_formatter_helper.gemspec

Gem::Specification.new do |spec|
  spec.name          = 'date_formatter_helper'
  spec.version       = '0.1.0'
  spec.authors       = ['bhaveshrordev']
  spec.email         = ['salujabhavesh24@gmail.com']
  spec.summary       = 'A helper gem for consistent date formatting.'
  spec.description   = 'DateFormatterHelper is a simple gem to format dates in a consistent manner across the application.'
  spec.homepage      = 'https://github.com/yourusername/date_formatter_helper'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*', 'spec/**/*', 'README.md']
  spec.required_ruby_version = '>= 2.5.0'

  spec.add_development_dependency 'rspec', '~> 3.0'
end
