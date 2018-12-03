class Transaction
  def initialize(debit, credit)
    @debit = debit
    @credit = credit
    @date = Time.now.strftime("%d/%m/%Y")
  end

  attr_reader :date, :debit, :credit

end
