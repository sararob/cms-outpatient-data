class ProceduresController < ApplicationController
  def home
    @procedures = Procedure.select(:apc).uniq
    @procedure_names = []
    @procedures.each do |procedure|
      @procedure_names.push(procedure.apc.slice(7, (procedure.apc.length)))
    end
  end
end