require 'yaml'
require 'pathname'

module ChaosScenario
  ROOT_PATH = Pathname.new(__FILE__).dirname

  autoload :Generator, 'chaos_scenario/generator'

  def self.ensue
    puts ROOT_PATH
    Generator.create_scenario
  end

end
