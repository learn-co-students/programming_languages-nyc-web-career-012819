def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |styles, lang_hash|
    lang_hash.each do |lang, type_hash|
      type_hash.each do |type, value|
        if new_hash[lang]
          new_hash[lang][:style] << styles
        else
          new_hash[lang] = {type => value}
          new_hash[lang][:style] = [styles]
        end
      end
    end
  end
  return new_hash
end
