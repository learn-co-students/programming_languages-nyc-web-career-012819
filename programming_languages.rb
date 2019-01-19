require "pry"
def reformat_languages(languages)
  # your code here
  new_hash = {}
  arr = []
    languages.each{|language_types, language_names|
      language_names.each{ |name, language_info|
        if language_types == languages.key(name)
          name[:style]= arr << language_types
          binding.pry
       end
         #[:style] = arr << language_types
      }
    }
    languages.each {|language_types, language_names| new_hash = new_hash.merge(language_names.clone)}
    new_hash
end
