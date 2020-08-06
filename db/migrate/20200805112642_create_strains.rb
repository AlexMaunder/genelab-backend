class CreateStrains < ActiveRecord::Migration[5.2]
  def change
    create_table :strains do |t|
      t.text :name
      t.text :mating_type
      t.text :morphology
      t.boolean :gm
      t.boolean :is_child
      t.integer :acid_tolerance
      t.integer :ferment_rate
      t.text :traits
      t.text :image

      t.timestamps
    end
  end
end
