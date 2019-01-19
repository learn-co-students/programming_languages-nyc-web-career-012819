require "pry"
def reformat_languages(languages)
  # your code here
  new_hash = {}
    languages.each{|language_types, language_names|
      language_names.each{ |name, language_info|
        #if new_hash[name].nil?
          new_hash[name] ||= {}
        #end
        new_hash[name][:style] ||= []
        new_hash[name][:style] << language_types
        new_hash[name][:type] = language_info[:type]
      }
    }
    new_hash
end
