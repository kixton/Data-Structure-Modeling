


class Recipes

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
	line = Recipes.new(line, )

end




f.close	



apple_salad = Recipes.new("apple salad", "4")
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
