require './lib/statement.rb'
require './lib/transaction.rb'

class Account
  def initialize
    @balance = 0
    @transactions = []
  end

  attr_reader :balance, :transactions

  def deposit(amount)
    @balance += amount
    transactions.push(Transaction.new(amount, 0, @balance))
    return "$#{amount} deposited. New account balance: #{@balance}"
  end

  def withdraw(amount)
    @balance -= amount
    transactions.push(Transaction.new(0, amount, @balance))
    return "$#{amount} withdrawn. New account balance: #{@balance}"
  end

  def statement
    Statement.new(@transactions)
  end
end
