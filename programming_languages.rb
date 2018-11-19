def reformat_languages(languages)
  new_hash={}
  languages.each do |k1,v1|
    v1.each do |k2,v2|
      v2.each do |k3,v3|
        if new_hash.has_key?(k2)
          new_hash[k2][:style] << k1
        else
          new_hash[k2] = {:type => v3, :style => [k1]}
        end
      end 
    end
  end
  return new_hash
end
