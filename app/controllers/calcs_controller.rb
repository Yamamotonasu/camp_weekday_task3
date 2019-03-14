class CalcsController < ApplicationController
  def show
    value1 = params[:value1].to_i
    value2 = params[:value2].to_i
    operators = params[:operators]
    
    @result = case operators
              when 'addition'
                value1 + value2
              when 'subtraction'
                value1 - value2
              when 'multiplication'
                value1 * value2
              when 'division'
                value1 / value2
              else
                "正しい値をURLに入力してください。"
              end
  end
end
