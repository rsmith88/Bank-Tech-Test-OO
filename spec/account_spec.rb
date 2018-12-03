require 'account'

describe Account do
  it 'should create an empty account for a user' do
    expect(subject.balance).to eq 0
  end

  it 'should create an empty array for transactions' do
    expect(subject.transactions.length).to eq 0
  end

  describe '#Deposit' do
    it 'should let a user deposit a sum of money' do
      subject.deposit(100)
      expect(subject.balance).to eq 100
    end

    it 'should create a record a transaction' do
      subject.deposit(100)
      expect(subject.transactions.length).to eq 1
    end
  end

  describe '#Withdraw' do
    it 'should let a user withdraw a sum of money' do
      subject.deposit(200)
      subject.withdraw(50)
      expect(subject.balance).to eq 150
    end

    it 'should create a record a transaction' do
      subject.withdraw(100)
      expect(subject.transactions.length).to eq 1
    end
  end

  describe '#Statement' do
    it 'should create a new statement' do
      expect(subject.statement).to be_a Statement
    end
  end
end
