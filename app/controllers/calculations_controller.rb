class CalculationsController < ApplicationController
  
  def index
    @result  = Results.all
  end

  # Action to display the form
  def new
    @result = Results.new
  end

  # Action to handle form submission and perform the calculation
  def create
    a = params[:a].to_f
    b = params[:b].to_f
    c = params[:c].to_f
    d = params[:d].to_f
    @result = Results.new(a: a, b: b, c: c, d: d)
    # Perform the multiplication
    @result = (c * b) /( a * d)
    puts @result
    redirect_to calculations_show_path(result: @result)
    
  end

  def show
    
    @result = params[:result]
  end

end