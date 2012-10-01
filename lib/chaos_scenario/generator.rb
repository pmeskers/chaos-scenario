module ChaosScenario
  module Generator
    extend self

    def create_scenario
      puts "A #{protagonist} #{placement} #{location}, #{attempt} #{goal}."
    end

    def method_missing classifier
      list = YAML.load_file("#{ROOT_PATH}/data/#{classifier}s.yml")
      list["#{classifier}s"].sample
    end

  end
end
