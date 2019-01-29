def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |oo_func, lang_hash|
    lang_hash.each do |language, attr|
      attr.each do |type, status|
        if new_hash[language].nil?
          new_hash[language] = {}
        end
        new_hash[language][:style] ||= []
        new_hash[language][:style] << oo_func
        if new_hash[language][type].nil?
          new_hash[language][type] = status
        end
      end
    end
  end
  new_hash
end
