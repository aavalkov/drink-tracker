class ReasonsController < ApplicationController
  def index
    @reasons = Reason.all
    @new_reason = Reason.new
    render('reasons/index.html.erb')
  end

  def create
    @reasons = Reason.all
    @new_reason = Reason.create(:description => params[:description], :done => false)
    render('reasons/index.html.erb')
  end

  def destroy
    @reasons = Reason.all
    @reason = Reason.find(params[:id])
    @reason.destroy
    render('reasons/index.html.erb')
  end

  def done
    @reasons = Reason.all
    @reason = Reason.find(params[:id])
    @reason.update(:done => true)
    render('reasons/index.html.erb')
  end


end
