class CreateLigneFactures < ActiveRecord::Migration[6.1]
  def change
    create_table :ligne_factures do |t|
      t.string :facture_id
      t.integer :produit_id
      t.integer :quantite

      t.timestamps
    end
  end
end
