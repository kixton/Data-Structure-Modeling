class Recipe

	attr_reader :name, :serving, :ingredients

	def initialize(name, serving, ingredients) # ingredients will be an array
		@name = name
		@serving = serving
		@ingredients = ingredients 
	end	

end	

# Part I -- open file and create an array of all lines
array = [] # create an array
file = File.open("recipes.txt", "r") # open recipes.txt file
	file.each_line do |line| # loop through each line in the file
		array << line # put in each line in an array
	end
file.close # close file 


# Part II -- Create a hash with 3 pairs for each of the 3 recipes. Key = 0..2, Value = recipe info (name, serving size, ingredients)
count = 0 # counter
hash = {} # create blank new hash
array2 = [] # create blank new array2

array.each do |x| # loop through array from Part I
	if x == "\n" # if element is blank...
		hash["#{count}"] = array2 # ...assign that array to a hash with the key = counter
		count += 1 # then increment counter (so you can later assign it to a new hash key)
		array2 = [] # empty array2
	else 
		x.gsub!("\n","") # take the element and subsitute "\n" with blank string to remove the "\n" at the end of the string
 		array2 << x # push element into array2
	end	
end	

# {"0" => ["recipe name", "serves 2", "ingredient 1", "ingredient 2"], "1" => [etc], "2" => [etc]}


# Part III -- create instances of Recipe class
array3 = [] # create blank new array3

hash.each do |k, v| # loop through the hash (created in Part II)
	array3 << Recipe.new(v[0], v[1], v[2..-1]) 
		# create new instance of Recipe which takes 3 arguments: name, serving, ingredients
		# values are stored as an array
		# index 0 of the array is the recipe name (first argument)
		# pushes the new instance of Recipe into array3
end




=begin
	
rescue Exception => e
	
end
# Desired Solution

recipes = {

	apple_salad: {
		recipe_name: "apple salad",
		serving_size: 4,
		ingredients: [
			"6 oz mixed greens",
			"1 tbs honey mustard",
			"2 tbs almonds",
			"4 apples",
			"salt and pepper"
		]
	}

}

recipes[:apple_salad]

=end