class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :nom
      t.string :email
      t.float :encours
      t.string :ville
      t.timestamps
    end
  end
end
