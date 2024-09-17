class AddPaymentMethodToDonations < ActiveRecord::Migration[7.1]
  def change
    add_column :donations, :payment_method, :string
  end
end
