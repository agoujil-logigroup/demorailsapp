class CreateFactures < ActiveRecord::Migration[6.1]
  def change
    create_table :factures do |t|
      t.string :nfacture
      t.integer :client_id
      t.boolean :valide
      t.date :date
      t.timestamps
    end
  end
end
