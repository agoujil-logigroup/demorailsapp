class CreateDeclarations < ActiveRecord::Migration[6.1]
  def change
    create_table :declarations do |t|
      t.string :user_id
      t.string :carte
      t.string :projet
      t.string :produit
      t.string :declaration
      t.string :float

      t.timestamps
    end
  end
end
