require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, style_info|
    style_info.each do |language, language_info|
      language_info.each do |k, v|
        if new_hash.has_key?(language)
          new_hash[language][:style] << style
        else
          new_hash[language] = {k => v, style: [style] }
        end
      end
    end
  end
    new_hash
end
