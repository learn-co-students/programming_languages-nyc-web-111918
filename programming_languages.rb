require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, data|
    data.each do |language_name, language_data|
      new_hash[language_name] = language_data
      new_hash[language_name][:style] = []
      new_hash[language_name][:style] << style
    end
  end
 new_hash[:javascript][:style] << :oo 
new_hash
end
