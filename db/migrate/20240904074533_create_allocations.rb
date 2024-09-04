class CreateAllocations < ActiveRecord::Migration[7.1]
  def change
    create_table :allocations do |t|
      t.string :category
      t.decimal :amount
      t.references :donation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
