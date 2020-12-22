class CreateCommercials < ActiveRecord::Migration[6.1]
  def change
    create_table :commercials do |t|
      t.string :nom
      t.integer :taux

      t.timestamps
    end
  end
end
