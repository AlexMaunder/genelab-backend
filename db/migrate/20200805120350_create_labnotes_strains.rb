class CreateLabnotesStrains < ActiveRecord::Migration[5.2]
  def change
    create_table :labnotes_strains, :id => false do |t|
      t.integer :note_id
      t.integer :strain_id
    end
  end
end
