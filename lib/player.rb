class Player
  attr_reader :name, :cost, :contract, :nick_name

  def initialize (name, cost, contract, nick_name = nil)
    @name = name
    @cost = cost
    @contract = contract
    @nick_name = nick_name
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

  def nickname
    nick_name
  end

  def set_nickname(name)
    @nick_name = name
  end

end