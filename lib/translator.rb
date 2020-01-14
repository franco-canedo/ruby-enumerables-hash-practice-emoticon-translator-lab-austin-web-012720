# require modules here
require "yaml"

def load_library(file_path)
  library = YAML.load_file(file_path)
  hash = {
    :get_meaning => {},
    :get_emoticon => {}
  }
  library.each { |meaning, emoticons|
    hash[:get_meaning][emoticons[1]] = meaning
    hash[:get_emoticon][emoticons[0]] = emoticons[1]
    }
  hash
end

def get_japanese_emoticon(file_path = './lib/emoticons.yml', emoticon)
  new_hash = load_library(file_path)
  
  if new_hash[:get_emoticon].include?(emoticon)
        new_hash[:get_emoticon][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning
  # code goes here
end