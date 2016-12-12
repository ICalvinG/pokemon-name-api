class CreatePokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :pokemon_type
      t.string :moves
      t.boolean :evolves
      t.integer :evolves_at_level
      t.string :evolution

      t.timestamps
    end
  end
end
