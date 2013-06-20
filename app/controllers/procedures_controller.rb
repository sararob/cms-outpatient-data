class ProceduresController < ApplicationController
  include ProceduresHelper

  def home
    @procedures = Procedure.select(:apc).uniq
  end

  def show
    @procedure = Procedure.find(params[:id])
  end

  def debridement1
    @data = Procedure.where("apc = ?", "0012 - Level I Debridement & Destruction")
    @title = Procedure.select(:apc).uniq.first
    @cali = Procedure.where("apc = ? AND provider_state = ?", @title.apc, "CA").order("avg_total_payments DESC")
  end
end