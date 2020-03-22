def nyc_pigeon_organizer(data)
  new_pigeon_list = {}                  # new empty hash
  data.each do |key, value|             # retrieve each key and value from data
    value.each do |new_value, names|    # create new_value and retriev names from data
      names.each do |name|              # retrieve name from names

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
