 
 
class LeadsController < ApplicationController
  before_action :set_lead, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json, :js

  def index
    @leads = Lead.all
  end 

  def show
  end 

  def new 
    @lead = Lead.new
  end 

  def edit
  end 

  def create
    @lead = Lead.new(lead_params)
    @lead.save
    respond_with(@lead)
  end 

  def update
    @lead.update(lead_params)
    flash[:notice] = 'Lead was successfully updated.'
    respond_with(@lead)
  end 

  def destroy
    @lead.destroy
    redirect_to leads_url, notice: 'Lead was successfully destroyed.'
  end 

  private
    def set_lead
      @lead = Lead.find(params[:id])
    end 

    def lead_params
      params.require(:lead).permit(:project, :needs, :source, :contact, :assigned, :temperature, :value) 
    end 
end
 
