class CreateLabnotes < ActiveRecord::Migration[5.2]
  def change
    create_table :labnotes do |t|
      t.text :name
      t.integer :strain_id
      t.text :notes

      t.timestamps
    end
  end
end
