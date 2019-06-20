def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, langs|
    langs.each do |lang, types|
      if new_hash[lang].length > 0
        new_hash[lang][:style].push(style)
      else
        types.each do |type, value|
          if type == :type
            new_hash[lang] = {type: value, style: [style]}
          end
        end
      end
    end
  end
  return new_hash
end
