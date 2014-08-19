class ReasonsController < ApplicationController
  # def index
  #   @reasons = Reasons.all
  #   render('reasons/index.html.erb')
  # end
  def create
    @reason = Reason.create(:description => params[:description])
    render('reasons/index.html.erb')
  end
end
