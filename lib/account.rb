class Account

  def initialize
    @balance = 0
  end

  attr_reader :balance

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

end
