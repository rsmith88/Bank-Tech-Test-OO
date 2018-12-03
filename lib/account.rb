require 'statement'

class Account

  def initialize
    @balance = 0
    @statement = Statement.new(@transactions)
    @transactions = []
  end

  attr_reader :balance, :statement

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

end
