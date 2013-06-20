class ChangeAvgTotalPaymentsToFloat < ActiveRecord::Migration
  def up
    change_column(:procedures, :avg_total_payments, :float)
  end

  def down
  end
end
