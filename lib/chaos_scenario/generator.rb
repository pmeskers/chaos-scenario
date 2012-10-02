module ChaosScenario
  module Generator
    extend self

    def create_scenario definition=:scenario
      scenario = create_string(definition) << "."
      scenario[0].upcase!
      scenario
    end

    def create_string type
      list = YAML.load_file("#{ROOT_PATH}/data/#{type}s.yml")
      input = list["#{type}s"].sample

      phrase = []
      input.split(" ").each do |word|
        if word[0] == '@'
          phrase << create_string(word[1..-1])
        else
          phrase << word
        end
      end

      full_phrase = phrase.flatten.join(" ")
      full_phrase.gsub!(" ,", ",")
      full_phrase.gsub!(" 's", "'s")

      # Take care of a/an
      while (pos = full_phrase.rindex(/(^| )a [aeiou]/i)) != nil
        full_phrase[pos] = "an"
      end

      full_phrase
    end

  end
end
