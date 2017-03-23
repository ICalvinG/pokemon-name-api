# Pokemon Name API

This is a RESTful API built in Rails containing 151 different Pokemon names.

## Setting up your database

Once you've cloned the repository to your computer, navigate into the directory from your terminal.

Create, migrate, and seed your database. Seeding will take approximately 1 - 2 minutes depending on your internet connection.
```
rails db:create && rails db:migrate && rails db:seed
```
Your database will be complete on the success of your 151st pokemon.

Now all you will need to do is to start up your server.
```
rails s
```

## Making your request

Make a GET request to see an index view of all your pokemon.
```
GET http://localhost:3000/api/v1/pokemons
```
Make a GET request to view a single pokemon. The id can be interchangeable from 1 to 151.
```
GET http://localhost:3000/api/v1/pokemons/1
```
This is your response:
```
{
  "id": 1,
  "name": "Bulbasaur",
  "pokemon_type": "poison",
  "moves": [
    "Grass-pledge",
    "Echoed-voice",
    "Round",
    "Venoshock",
    "Power-whip",
    "Sludge",
    "String-shot",
    "Knock-off",
    "Grass-knot",
    "Captivate"
  ],
  "evolves": true,
  "evolves_at_level": 16,
  "evolution": "Ivysaur",
  "created_at": "2016-12-23T05:21:42.013Z",
  "updated_at": "2016-12-23T05:21:42.013Z"
}
```
Make a POST request to create a pokemon in your database.
```
POST http://localhost:3000/api/v1/pokemons/
```
Make a PUT/PATCH request to update a pokemon in your database. Let's say you wanted to change Bulbasaur's pokemon type to grass.
```
PUT/PATCH http://localhost:3000/api/v1/pokemons/1
```
Here is your response:
```
{
  "id": 1,
  "name": "Bulbasaur",
  "pokemon_type": "grass",
  "evolves": true,
  "evolves_at_level": 16,
  "evolution": "Ivysaur",
  "moves": [
    "Grass-pledge",
    "Echoed-voice",
    "Round",
    "Venoshock",
    "Power-whip",
    "Sludge",
    "String-shot",
    "Knock-off",
    "Grass-knot",
    "Captivate"
  ],
  "created_at": "2016-12-23T05:21:42.013Z",
  "updated_at": "2016-12-23T21:11:23.230Z"
}
```
Finally the last request is to make a DELETE request to delete a pokemon from your database.
```
DELETE http://localhost:3000/api/v1/pokemons/1
```
Thank you, hope you enjoyed my RESTful API and to all my very best: "Gotta Catch 'Em ALL"

