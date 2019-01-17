
def reformat_languages(languages)
  new_hash = {}
  lang_keys = languages.keys
  languages.each do |style, lang|
    lang.each do |name, type|
      new_hash[name] = type
    end
  end
    new_hash[:ruby][:style] = []
    new_hash[:javascript][:style] = lang_keys
    new_hash[:python][:style] = []
    new_hash[:java][:style] = []
    new_hash[:clojure][:style] = []
    new_hash[:erlang][:style] = []
    new_hash[:scala][:style] = []
    new_hash[:ruby][:style].push(lang_keys[0])
    new_hash[:python][:style].push(lang_keys[0])
    new_hash[:java][:style].push(lang_keys[0])
    new_hash[:clojure][:style].push(lang_keys[1])
    new_hash[:erlang][:style].push(lang_keys[1])
    new_hash[:scala][:style].push(lang_keys[1])
    
  new_hash
end
