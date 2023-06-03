def find_all_nested(json,all_keys)
  if(json.kind_of?(Array))
    json.each do |element|
      find_all_nested(element, all_keys)
    end
  else
    if(json.respond_to?('keys'))
      json.keys.each do |key|
        all_keys << key
        find_all_nested(json[key],all_keys)
      end
    end
  end
end
