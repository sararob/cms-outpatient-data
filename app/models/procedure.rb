class Procedure < ActiveRecord::Base
  attr_accessible :apc, :avg_submitted_charges, :avg_total_payments, :hospital_region, :outpatient_services, :provider_city, :provider_id, :provider_name, :provider_state, :provider_street, :provider_zip

  def procedure_names
    names = Procedure.select(:apc).uniq
  end
end
