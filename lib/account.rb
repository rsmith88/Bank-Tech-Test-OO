require 'statement'
require 'transaction'

class Account

  def initialize
    @balance = 0
    @statement = Statement.new(@transactions)
    @transactions = []
  end

  attr_reader :balance, :statement, :transactions

  def deposit(amount)
    @balance += amount
    transactions.push(Transaction.new(amount, 0, @balance))
  end

  def withdraw(amount)
    @balance -= amount
    transactions.push(Transaction.new(0, amount, @balance))
  end

end
