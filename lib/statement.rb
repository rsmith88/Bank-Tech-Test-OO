# This class prints all transactions
class Statement
  def initialize(transactions)
    @transactions = transactions
  end

  attr_reader :transactions

  def print
    puts 'Date       || credit || debit || balance '
    @transactions.each do |transaction|
      puts "#{transaction.date} ||  #{transaction.credit}  ||  #{transaction.debit}  ||  #{transaction.balance}"
    end
    'Thank you for choosing Tech-Test Bank!'
  end
  
end
