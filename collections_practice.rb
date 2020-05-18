# your code goes here
require "pry"


def begins_with_r strings
    strings.all? do |string|
        string.start_with? "r"
    end
end


def contain_a strings
    strings.select do |string|
        string.include? 'a'
    end
end

def first_wa strings_and_symbols
    strings_and_symbols.find do |string_or_symbol|
       string_or_symbol.to_s.start_with? 'wa'
    end  
end

def remove_non_strings varying_data_types
    varying_data_types.select do |data_type|
        data_type.class == String
        # data_type.is_a?(String)
    end
end

def count_elements hashes
    counts_array = []

    hashes.each do |hash|
       count_hash = counts_array.find do|counted_hash| 
         hash[:name] == counted_hash[:name]
       end

       if count_hash
          count_hash[:count] += 1
       else
          count_hash = {
           name: hash[:name],
           count: 1
           }
        counts_array << count_hash
        end
    end
    counts_array
end



# def count_elements hashes
#     counts_array = []

#     hashes.each do |hash|
#         if hash[:name] == !nil
#             puts 'hello'
#         end
#         binding.pry

#     end
# end

def merge_data first_array, second_array

    output = []

    first_array.each_with_index do |element, index|
        new_hash = {}

        first_array[index].each do |key, value|
            new_hash[key] = value
        end

        second_array[index].each do |key, value|
            new_hash[key] = value
        end

        output << new_hash
    end
    output
end



def find_cool hashes
        hashes.select do |hash|
            hash[:temperature] == "cool"
        end
end

def organize_campuses campuses
    campuses_by_location = {}

    campuses.each do |name, location_hash|

        location = location_hash[:location]

        if campuses_by_location.has_key?(location)
            campuses_by_location[location] << name

        else
            campuses_by_location[location] = [name]
        end
    end

    campuses_by_location
end