class CalcsController < ApplicationController
  include Common

  def show
    value1 = params[:value1].to_i
    value2 = params[:value2].to_i
    operators = params[:operators]
    
    @result = calculation(operators, value1, value2)
  end
end
