class Player
  attr_reader :name, :cost, :conract

  def initialize (name, cost, contract)
    @name = name
    @cost = cost
    @contract = contract
  end

  def first_name
    first = name.split(" ")
    first[0]
  end

  def last_name
    last = name.split(" ")
    last[1]
  end

  def monthly_cost
    cost
  end

  def contract_lenght
    contract
  end

end