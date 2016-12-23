class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.string :name, null: false
      t.string :pokemon_type, null: false
      t.string :moves
      t.boolean :evolves, default: :false
      t.integer :evolves_at_level
      t.string :evolution

      t.timestamps
    end
  end
end
