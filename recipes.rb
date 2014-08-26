


class Recipe

	attr_reader :name, :serving, :ingredients

	def initialize(name, serving_size)
		@name = name
		@serving = serving_size
		@ingredients = []
	end	

	def add_ingredient(ingredient)
		@ingredients << ingredient 
	end	

end	



file = File.open("recipes.txt", "r")

file.each_line do |line|

	# first create an array for each recipe
		apple_salad = []
		bean_burgers = []
		avacado_soup = []
	
	# store each line as string
		apple_salad << line
		bean_burgers << line
		avacado_soup << line

	# read array 

		array[0] # index 0 = recipe_name
		array[1] # index 2 = serving_size
		array[3..-1] # index 3 to last index = ingredients

end




f.close	



apple_salad = Recipe.new("apple salad", "4")
apple_salad.add_ingredient("6 oz mixed greens")


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
