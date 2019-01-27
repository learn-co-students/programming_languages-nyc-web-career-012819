languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, language|
    language.keys.each do |name|
      if !new_hash.keys.include?(name)
        new_hash[name] = {}
      end
    end
    
    language.each do |name, attributes|
      if !new_hash[name].include?(:type)
        new_hash[name] = attributes
      end
    end
    
    language.keys.each do |name|
      if !new_hash[name].keys.include?(:style)
        new_hash[name][:style] = []
        new_hash[name][:style].push(style)
      else
        puts "#{name} already has the key style"
        new_hash[name][:style].push(style)
      end
    end
  end
  
  return new_hash
end
