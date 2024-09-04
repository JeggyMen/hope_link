class ChangeDonationIdInAllocationsToAllowNull < ActiveRecord::Migration[7.1]
  def change
    change_column_null :allocations, :donation_id, true
  end
end
