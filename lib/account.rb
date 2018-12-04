require './lib/statement.rb'
require './lib/transaction.rb'

# This class manages account functions"
class Account
  def initialize
    @balance = 0
    @transactions = []
  end

  attr_reader :balance, :transactions

  def deposit(amount)
    @balance += amount
    transactions.push(Transaction.new(amount, nil, @balance.truncate(2)))
    "$#{amount} deposited. New account balance: #{@balance.truncate(2)}"
  end

  def withdraw(amount)
    @balance -= amount
    transactions.push(Transaction.new(nil, amount, @balance.truncate(2)))
    "$#{amount} withdrawn. New account balance: #{@balance.truncate(2)}"
  end

  def statement
    Statement.new(@transactions).print
  end

end
