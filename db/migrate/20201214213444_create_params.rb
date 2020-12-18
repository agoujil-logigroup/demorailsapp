class CreateParams < ActiveRecord::Migration[6.1]
  def change
    create_table :params do |t|
      t.string :trello_key
      t.string :trello_token

      t.timestamps
    end
  end
end
