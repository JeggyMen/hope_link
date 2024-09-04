class RemoveAllocationFromDonors < ActiveRecord::Migration[7.1]
  def change
    remove_column :donations, :name_of_allocation, :string
  end
end
