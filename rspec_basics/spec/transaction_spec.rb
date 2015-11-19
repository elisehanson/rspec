require '../transaction'

RSpec.configure do |rspec|
  rspec.color = true
end


describe Transaction do 

  # initalize

  let(:transaction) { Transaction.new(credit_account: 100, debit_account: 100, amount: 100, time: Time.now) }

  # validations

  context "valid_account_number?" do
    it "returns true if number is Fixnum" do
      expect(transaction.valid_account_number?(100)).to eq(true)
    end
  end

  context "valid_amount?" do
    it "returns true if number is Fixnum" do
      expect(transaction.valid_amount?(100)).to eq(true)
    end
  end

  context "valid_time?" do
    it "returns true if valid Time" do
      expect(transaction.valid_time?(Time.now)).to eq(true)
    end
  end

  # syntactic sugar

  context "amount_to_currency" do
    it "converts amount to currency" do
      expect(transaction.amount_to_currency).to eq("$1.00")
    end
  end

  context "pretty_time" do
    it "changes format of Time" do
      expect(transaction.pretty_time).to eq(Time.now.strftime("%A, %d %b %Y %l:%M %p"))
    end
  end

end