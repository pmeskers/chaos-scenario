module ChaosScenario
  module Generator
    extend self

    def create_scenario
      puts "Creating scenario"
      puts "A #{protagonist} #{placement} #{location} #{goal}"
    end

    def method_missing classifier
      list = YAML.load_file("#{ROOT_PATH}/data/#{classifier}s.yml")
      list["#{classifier}s"].choice
    end

  end
end
