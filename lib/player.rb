class Player
  attr_reader :name, :cost, :contract

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

  def contract_length
    contract
  end

  def total_cost
    cost * contract
  end

end