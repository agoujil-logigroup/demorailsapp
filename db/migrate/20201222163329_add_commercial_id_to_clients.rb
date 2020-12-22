class AddCommercialIdToClients < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :commercial_id, :integer
  end
end
