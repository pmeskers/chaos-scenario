require 'yaml'
require 'pathname'

module ChaosScenario
  ROOT_PATH = Pathname.new(__FILE__).dirname

  autoload :Generator, 'chaos_scenario/generator'

  def self.ensue
    Generator.create_scenario
  end

end
