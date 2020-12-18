class LigneFacture < ApplicationRecord

    belongs_to :facture
    belongs_to :produit
end
