require "pry"
def reformat_languages(languages)
  # your code here
  hash = Hash.new 
  arr = []
  
  languages.each do |type, lang_hash|
    lang_hash.each do |name, data| 
      data.each do |data_name, value| 
        if hash.key?(name) == false 
          hash[name] = {data_name => value, :style => [type]}
        else 
          hash[name][:style] << type 
        end 
      end 
    end 
  end  
  hash 
end 

