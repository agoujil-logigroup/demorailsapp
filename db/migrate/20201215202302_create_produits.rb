class CreateProduits < ActiveRecord::Migration[6.1]
  def change
    create_table :produits do |t|
      t.string :libelle
      t.float :prix_ht, precision: 10, scale: 2
      t.float :prix_ttc, precision: 10, scale: 2
      t.integer :taux_tva

      t.timestamps
    end
  end
end
