def nyc_pigeon_organizer(data)
  new_pigeon_list = {}
  data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|

      if !new_pigeon_list[name]
      new_pigeon_list[name] = {}
      end

      if !new_pigeon_list[name][key]
      new_pigeon_list[name][key] = []
      end

      new_pigeon_list[name][key] <<new_value.to_s
      end
    end
  end
   new_pigeon_list
end
