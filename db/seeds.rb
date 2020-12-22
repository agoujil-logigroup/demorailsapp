# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Commercial.delete_all
(1..7).each do |id|
    Commercial.create!(
        nom: Faker::Name.name,
        taux: [2,7,14,29].sample
    )
end

commercials = Commercial.all.pluck(:id)
Client.delete_all
(1..100).each do |id|
    Client.create!(
        nom: Faker::Name.name,
        email: Faker::Internet.email,
        ville: Faker::Address.city,
        commercial_id: commercials.sample
    )
end

Produit.delete_all
(1..100).each do |id|
    produit = Produit.new(
            libelle: Faker::Book.title ,
            prix_ht: Faker::Number.decimal(l_digits: 3, r_digits: 2),
            prix_ttc: Faker::Number.decimal(l_digits: 3, r_digits: 2),
            taux_tva: [0,7,14,20].sample
        )
    produit.prix_ttc = produit.prix_ht + (produit.prix_ht * produit.taux_tva / 100 )
    
    produit.save

end


Facture.delete_all
LigneFacture.delete_all

clients = Client.all.pluck(:id)
produits = Produit.all.pluck(:id)

nfacture = "FA0000"
(1..500).each do |id|
    nfacture = nfacture.next
    Facture.create!(
        nfacture: nfacture,
        date: Faker::Date.between(from: '2020-12-31', to: '2019-01-01'),
        client_id: clients.sample,
        valide: rand(1)
    )
end

Facture.all.each do |facture|
    (1..rand(1..5)).each do |id_ligne|
        LigneFacture.create!(
            facture_id: facture.id,
            produit_id: produits.sample ,
            quantite: rand(1..10),
        )
    end
end

