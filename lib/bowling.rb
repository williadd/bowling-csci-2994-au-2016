class Bowling
  def strike?(frame)
    10 == frame.num1
  end

  def spare?(frame)
    10 == (frame.num1 + frame.num2)
  end
end