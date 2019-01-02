def begins_with_r(array)
  array.all? do |i|
    i.start_with?("r")
  end 
end 

def contain_a(array)
  new_array = []
  array.select do |i|
    if i.include?("a")
      new_array << i 
    end 
  end
  new_array
end

def first_wa(array)
  array.find do |i|
    if i[0] == "w" && i[1] == "a"
      i 
    end
  end 
end 

def remove_non_strings(array)
  array.delete_if do |i|
    i.class != String 
  end
  array
end

def count_elements(array)
  array.group_by(&:itself).map do |key, value|
    key.merge({:count => value.length})
  end
end

def merge_data(keys, data)
  merged = []
  keys.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
  merged
end

def find_cool(array)
  if array[1].values[1] == "cool"
    [cool[1]]
  end
end

def find_cool(cool)
    cool.select {|i| i.any? {|k,v| v == "cool"}} 
end



  