def reformat_languages(languages)
  new_hash = {}
  languages.each do |x,y|
    y.each do |k,v|
      new_hash[k] = v
      new_hash[k][:style] = []
      new_hash[k][:style] << x
    end
  end
  new_hash[:javascript][:style] << :oo
  new_hash[:javascript][:style].reverse
  new_hash
end
