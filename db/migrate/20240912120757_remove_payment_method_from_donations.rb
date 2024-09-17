class RemovePaymentMethodFromDonations < ActiveRecord::Migration[7.1]
  def change
    remove_column :donations, :payment_method, :string
  end
end
