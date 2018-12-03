describe Transaction do
  describe '#initialize' do
    it 'creates a new transaction that stores the date' do
      transaction = Transaction.new(0, 0, 0)
      expect(transaction.date).to eq Time.now.strftime('%d/%m/%Y')
    end

    it 'creates a new transaction that accepts debit' do
      transaction = Transaction.new(0, 1000, 0)
      expect(transaction.debit).to eq 1000
    end

    it 'creates a new transaction that accepts credit' do
      transaction = Transaction.new(1000, 0, 0)
      expect(transaction.credit).to eq 1000
    end

    it 'creates a new transaction that accepts a balance' do
      transaction = Transaction.new(1000, 0, 2000)
      expect(transaction.balance).to eq 2000
    end
  end
end
