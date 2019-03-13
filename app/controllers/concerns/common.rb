module Common
  extend ActiveSupport::Concern

  def calculation(operators, value1, value2)
    case operators
    when 'addition'
      value1 + value2
    when 'subtraction'
      value1 - value2
    when 'multiplication'
      value1 * value2
    when 'division'
      begin
        (value1 / value2)..(value1 % value2)
      rescue => e
        e
      end
    else
      "正しい値をURLに入力してください。"
    end
  end
end
