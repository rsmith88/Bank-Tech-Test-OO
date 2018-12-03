class Statement

  def initialize(transactions)
    @transactions = transactions
  end

  attr_reader :transactions

  def print
    @transactions.each do |transaction|
      return "#{transaction.date} || #{transaction.credit} || #{transaction.debit} || #{transaction.balance}"
    end
  end

end
