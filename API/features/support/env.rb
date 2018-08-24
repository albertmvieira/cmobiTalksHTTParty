require 'httparty'
require 'faker'
require 'date'
require 'rspec'
#verifica em cucumber.yml qual default esta para o ENV
AMBIENTE = ENV['ENV']
#carrega o arquivo yml de acordo com o tipo de ambiente.
$env = YAML.load_file(File.dirname(__FILE__)+"/config/#{AMBIENTE}.yml")