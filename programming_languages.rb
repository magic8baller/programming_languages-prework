#require "pry"
def reformat_languages(languages)

  new_hash = {}

  languages.each do |style, lang_hash|
   # :oo => {:ruby => { :type => 'interpreted'}, ...}
    lang_hash.each do |lang_name, type_hash|
    # :ruby => {:type => 'interpreted'}

      type_hash[:type] = type
      #type = string value of type_hash[:type]

      if !new_hash[lang_name] #if new_hash doesn't have a language yet, add lang with hash value of type and style
        new_hash[lang_name] = {:type => type, :style => [style]}

      #if new_hash has a lang already, just add/push style symbols into an array as values of a :style key
      else new_hash[lang_name][:style] << style
    #binding.binding.pry

      end

    end

  end

  new_hash

end
