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
  #binding.pry
  new_hash
end


def get_japanese_emoticon(file_path, western_emo)
  
  emo_hash = load_library(file_path)
  
  jap_emo = emo_hash[western_emo].key
  #binding.pry
  #emoticon_hash.each do
    
  #done
  
end

def get_english_meaning(file_path, western_emo)
  # code goes here
end