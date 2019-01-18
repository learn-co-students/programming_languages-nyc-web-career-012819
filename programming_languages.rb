require 'pry'


def reformat_languages(languages)
  langs = {}
  style = []
  languages.each do |s, l|
    style << s
    l.each do |a, b|
      langs[a] = b
    end
  end
  langs.each do |lang, attr|
    if (lang == :ruby || lang == :python || lang == :java)
      langs[lang][:style] = [style[0]]
    elsif (lang == :clojure || lang == :erlang || lang == :scala)
      langs[lang][:style] = [style[1]]
    else
      langs[lang][:style] = style
    end
  end
  langs
end

# 1. store hash in a variable
# 2. iterate over languages hash
# 3. for each style put languages inside hash variable
# 4. for each language put type inside each language
# 5. for each language put style inside each language as an array
