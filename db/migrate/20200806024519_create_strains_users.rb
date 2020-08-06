class CreateStrainsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :strains_users, :id => false do |t|
      t.integer :user_id
      t.integer :strain_id
    end
  end
end
