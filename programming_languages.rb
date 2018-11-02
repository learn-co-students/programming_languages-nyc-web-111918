def reformat_languages(languages)
  reformatted={}
  languages.each do |style, stylevalues|
    stylevalues.each do |language, languagedata|
      if reformatted.keys.include?(language)
        reformatted[language][:style].push(style)
      else
        reformatted[language]={type:languagedata[:type],style:[style]}
      end
    end
  end
  return reformatted
end
