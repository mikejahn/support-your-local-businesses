class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :website
      t.string :address
      t.string :gift_card_link
      t.belongs_to :city, foreign_key: true

      t.timestamps
    end
  end
end
