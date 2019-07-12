require 'yaml'
require 'pry'

def load_library(translator)
 emoji_hash = YAML.load_file(translator)
  library_hash = {"get_meaning" => {} , "get_emoticon" => {}}
 emoji_hash.each do |word, emoticon_array|
   library_hash["get_meaning"][emoticon_array[1]] = word
   library_hash["get_emoticon"][emoticon_array[0]] = emoji_hash[word][1]
  end
  library_hash
end
 

def get_japanese_emoticon(file_path, english_emoticon)
  call_library = load_library(file_path)
  result = call_library["get_emoticon"][emoticon]
  result ? result : "Sorry, that emoticon was not found"
  #above is a terinary operator and it means if the result is true return the left side of the colon.  But if its false 
  #retun the right side of the colon. Terinary does not need an end. 
  
 binding.pry 
  
end

#def get_english_meaning
  # code goes here
#end