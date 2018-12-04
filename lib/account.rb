require './lib/statement.rb'
require './lib/transaction.rb'

# This class manages account functions"
class Account
  def initialize
    @balance = 0
    @transactions = []
    @statement = Statement.new(@transactions)
  end

  attr_reader :balance, :transactions, :statement

  def deposit(amount)
    @balance += amount
    transactions.push(Transaction.new(amount, nil, @balance))
    "$#{amount} deposited. New account balance: #{@balance}"
  end

  def withdraw(amount)
    @balance -= amount
    transactions.push(Transaction.new(nil, amount, @balance))
    "$#{amount} withdrawn. New account balance: #{@balance}"
  end

end
