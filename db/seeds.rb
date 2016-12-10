ash = User.where(name: "Ash Ketchum").create
brock = User.where(name: "Brock").create
misty = User.where(name: "Misty").create
james = User.where(name: "James").create
jessie = User.where(name: "Jessie").create

3.times do 
	pokemon = ash.pokemon.create(
		name: Faker::Pokemon.name
		)
end

3.times do 
	pokemon = brock.pokemon.create(
		name: Faker::Pokemon.name
		)
end

3.times do 
	pokemon = misty.pokemon.create(
		name: Faker::Pokemon.name
		)
end

3.times do 
	pokemon = james.pokemon.create(
		name: Faker::Pokemon.name
		)
end

3.times do 
	pokemon = jessie.pokemon.create(
		name: Faker::Pokemon.name
		)
end