class CreateDonations < ActiveRecord::Migration[7.1]
  def change
    create_table :donations do |t|
      t.references :user, null: false, foreign_key: true
      t.date :donation_date
      t.float :amount
      t.string :name_of_allocation

      t.timestamps
    end
  end
end
