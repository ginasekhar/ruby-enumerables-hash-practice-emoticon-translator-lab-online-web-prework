# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  emoticon_hash = YAML.load_file(file_path)
  new_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  emoticon_hash.each do |key_meaning, value_array|
    #binding.pry
    english_emo = value_array[0]
    japanese_emo = value_array[1]
    new_hash["get_emoticon"][english_emo] = japanese_emo
    new_hash["get_meaning"][japanese_emo] = key_meaning
  end
  new_hash
end


def get_japanese_emoticon(file_path, western_emo)
  
  jap_emo = emo_hash["get_emoticon"][western_emo]
  
  binding.pry
  if !jap_emo
    puts "Sorry, I don't know what that emoji means"
    return nil
  else
    return jap_emo
  end
end

def get_english_meaning(file_path, western_emo)
  # code goes here
  #binding.pry
end