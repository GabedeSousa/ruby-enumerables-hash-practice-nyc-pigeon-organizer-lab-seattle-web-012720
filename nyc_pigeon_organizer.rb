def nyc_pigeon_organizer(data)
piegeon_list = {}
data.each do |key,values|
  values.each do |value,names|
    names.each do |name|
      piegeon_list[name] || = {}
      piegeon_list[name][key] || = {}
      piegeon_list[name][key] << value.to_s 
    end
  end
end
piegeon_list
end

