class ChangeAvgSubmittedChargesInProceduresFloat < ActiveRecord::Migration
  def up
    change_column(:procedures, :avg_submitted_charges, :float)
  end

  def down
  end
end
