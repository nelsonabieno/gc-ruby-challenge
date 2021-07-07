require "merchants"

describe Merchants do
  describe ".index" do
    context "given all the merchant data" do
      it "gets the list of all merchants" do
        expect(Merchants.index).not_to be_empty
      end
    end
  end

  describe ".transactions_list" do
    context "given all the merchant data" do
      it "gets the list of the transanctions" do
        expect(Merchants.transactions_list).not_to be_empty
      end
    end
  end

  describe ".payment_sum" do
    context "given all the merchant data" do
      it "calculates the sum of the payments" do
        expect(Merchants.payment_sum).not_to be_empty
      end
    end
  end

  describe ".generates_csv" do
    context "given all payments" do
      it "geneartes calcluated result into csv" do
        expect(Merchants.generate_csv).not_to be_empty
      end
    end
  end
end