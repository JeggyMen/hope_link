class AddPaymentLinkIdToDonations < ActiveRecord::Migration[7.1]
  def change
    add_column :donations, :payment_link_id, :string
  end
end
