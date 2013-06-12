class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.string :apc
      t.string :provider_id
      t.string :provider_name
      t.string :provider_street
      t.string :provider_city
      t.string :provider_state
      t.string :provider_zip
      t.string :hospital_region
      t.string :outpatient_services
      t.string :avg_submitted_charges
      t.string :avg_total_payments

      t.timestamps
    end
  end
end
