# pretty_model.gemspec

# Carrega o arquivo de versão
require_relative 'lib/pretty_model/version'

Gem::Specification.new do |spec|
  spec.name          = "pretty_model"
  spec.version       = PrettyModel::VERSION
  spec.authors       = ["Guilherme Reis"]
  spec.email         = ["guilhermejosereis27@gmail.com"]
  spec.summary       = "Gerador de concerns para Rails"
  spec.description   = "Uma gem para gerar concerns em um projeto Rails"
  spec.homepage      = "https://github.com/guilhermereis1/pretty_model"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*.rb", "lib/generators/concern_generator/templates/concern.rb"]
  spec.require_paths = ["lib"]
end
