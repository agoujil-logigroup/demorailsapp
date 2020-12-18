require "administrate/base_dashboard"

class FactureDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    client: Field::BelongsTo,
    id: Field::Number,
    nfacture: Field::String,
    montant_ttc: Field::Number.with_options(decimals: 2),
    montant_ht: Field::Number,
    valide: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    LigneFacture: HasManyTableField,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
  client
  id
  nfacture
  LigneFacture
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
  client
  id
  nfacture
  montant_ttc
  montant_ht
  valide
  created_at
  updated_at
  LigneFacture
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
  client
  nfacture
  montant_ttc
  montant_ht
  valide
  LigneFacture
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how factures are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(facture)
  #   "Facture ##{facture.id}"
  # end
end
