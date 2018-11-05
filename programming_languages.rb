require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, data|
    data.each do |language_name, language_data|
      language_data.each do |attribute, value|
        if new_hash[language_name] == nil 
          new_hash[language_name] = {}
        end
      new_hash[language_name][:style] ||= []
      new_hash[language_name][:style] << style
        if new_hash[language_name][attribute] == nil
          new_hash[language_name][attribute] = value
        end
      end
    end
  end
new_hash
end
