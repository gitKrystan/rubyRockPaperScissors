class String
  define_method(:beats?) do |opponent|
    if self == opponent
      "tie"
    else
      (self == "rock" && opponent == "scissors") ||
      (self == "paper" && opponent == "rock") ||
      (self == "scissors" && opponent == "paper")
    end
  end
end
