require 'pry'




def reformat_languages(languages)
  new_hash = {}
  languages.collect do |style,x|
      x.collect do |lan,type|
        type.collect do |key,value|
        if new_hash[lan]
          new_hash[lan][:style]<< style
        else
          new_hash[lan]={key=>value}
          new_hash[lan][:style]=[style]
            end
          end
        end
      end
    return new_hash
end
