require "pry"

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
  interpreted_languages = get_type_list(languages, "interpreted")
  compiled_languages = get_type_list(languages, "compiled")
  oo_languages = get_style_list(languages, "oo")
  functional_languages = get_style_list(languages, "functional")

  languages.each do |style, data|
    data.each do |k, value|
      new_hash[k] = {}
    end
  end
  new_hash.each do |language, info|
      info[:type] = ""
      info[:style] = []
    if interpreted_languages.include?(language.to_s)
      info[:type] = "interpreted"
    elsif compiled_languages.include?(language.to_s)
      info[:type] = "compiled"
    end
    if oo_languages.include?(language.to_s)
      info[:style]  << :oo
    end
    if functional_languages.include?(language.to_s)
      info[:style]  << :functional
    end
    if functional_languages.include?(language.to_s) && oo_languages.include?(language.to_s)
      info[:style]  << :functional
      info[:style]  << :oo
    end
  end
  new_hash
end

def get_style_list (languages, _style)
  list = []
  languages.each do |style, data|
    if style.to_s == _style
      data.each do |language, type|
        list << language.to_s
      end
    end
  end
  list
end

def get_type_list (languages, _type)
  list = []
  languages.each do |style, data|
    data.each do |language, type|
      if type[:type] == _type
        list << language.to_s
      end
    end
  end
  list
end
