for count in 1..10
	hash_string = Pokegem.get "pokemon", count
	pretty_hash = JSON.parse(hash_string.gsub("'",'"').gsub('=>',':'))
	pokemon = Pokemon.new(
		name: pretty_hash["name"],
		pokemon_type: pretty_hash["types"][0]["name"]
		)
	pokemon.save
	puts "Success for Pokemon Number #{count}"
end