class Facture < ApplicationRecord

    belongs_to :client
    has_many :LigneFacture
end
