for count in 1..151
	hash_string = Pokegem.get "pokemon", count
	pretty_hash = JSON.parse(hash_string.gsub("'",'"').gsub('=>',':'))
	moves_array = [] 
	for int in 1..10
		if !pretty_hash["moves"][int].nil?
			moves_array << pretty_hash["moves"][int]["name"]
		else
			break
		end
	end
	pokemon = Pokemon.new.tap do |poke|
		poke[:name] = pretty_hash["name"],
		poke[:moves] = moves_array,
		if !pretty_hash["evolutions"][0].nil?
			poke[:evolves] = true
			poke[:evolves_at_level] = pretty_hash["evolutions"][0]["level"]
			poke[:evolution] = pretty_hash["evolutions"][0]["to"]
		else
			poke[:evolves] = false
		end
	end
	pokemon.save
	puts "Success for Pokemon Number #{count}"
end

# hash_string = Pokegem.get "pokemon", 10
# pretty_hash = JSON.parse(hash_string.gsub("'",'"').gsub('=>',':'))
# moves_array = []
# for int in 1..10
# 	if !pretty_hash["moves"][int].nil?
# 		moves_array << pretty_hash["moves"][int]["name"]
# 	else
# 		break
# 	end
# end
# pokemon = Pokemon.new(
# 	name: pretty_hash["name"],
# 	pokemon_type: pretty_hash["types"][0]["name"],
# 	:moves => moves_array
# 	)
# pokemon.save
binding.pry