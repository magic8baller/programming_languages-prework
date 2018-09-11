#require "pry"
def reformat_languages(languages)

  new_hash = {}

  languages.each do |style, lang_hash|
   # :oo => {:ruby => { :type => 'interpreted'}, ...}
    lang_hash.each do |lang_name, type_hash|
    # :ruby => {:type => 'interpreted'}

      type = type_hash[:type]
      #type = 'interpreted'

      if !new_hash[lang_name]  #if new_hash doesn't have a language yet

        new_hash[lang_name] = {:type => type, :style => [style]}
          #add lang with hash val of type and style pairs

      #new_hash already has lang?
      else new_hash[lang_name][:style] << style
     # add/push style :symbols --> array as vals of a :style key

      end

    end

  end

  new_hash

end
