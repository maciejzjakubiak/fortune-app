class MyExamplesController < ApplicationController
  def fortunes
    array = [
      "If you feel you are right, stand firmly by your convictions.",
      "Adversity is the parent of virtue.",
      "LIFE CONSISTS NOT IN HOLDING GOOD CARDS, BUT IN PLAYING THOSE YOU HOLD WELL.",
      "Serious trouble will bypass you.",
    ]
    index = rand(0..3)
    fortune = array[index]

    render json: fortune
  end

  def lotto
    numbers = []
    whole = (1..60).to_a
    6.times do
      numbers << rand(whole.count)
      whole = whole - numbers
    end
    numbers = numbers.to_s

    render plain: "The lucky numbers are #{numbers}"
  end
end
