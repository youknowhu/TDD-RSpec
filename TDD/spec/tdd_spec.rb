require 'rspec'
require 'tdd'

RSpec.describe Array do
  describe "#remove_dups" do
    context "when array is empty" do
      it "return nil" do
        expect([].remove_dups).to eq(nil)
      end
    end

    context "when there are duplicate numbers" do
      it "returns unique array in the order in which they first appear" do
        expect([1,2,1,3,3].remove_dups).to eq([1,2,3])
      end

    end
  end

  describe "#two_sum" do
    context "when array is empty" do
      it "retuns nil" do
        expect([].two_sum).to eq(nil)
      end
    end

    context "when array has only one sum" do
      it "returns indices single pair with correct order" do
        expect([0,3,4,-3].two_sum).to eq([[1,3]])
      end
    end

    context "when array has multiple sum" do
      it "returns multiple index paires with no duplicate" do
        expect([0,3,4,-3,-4,-3].two_sum).to eq([[1,3],[1,5],[2,4]])
      end
    end
  end

  describe "#my_transpose" do
    context "when input is a square array" do
      it "returns square array transposed" do
        arr = [
          [0,1,2],
          [3,4,5],
          [6,7,8]
        ]

        result_arr = [
          [0,3,6],
          [1,4,7],
          [2,5,8]
        ]
        expect(arr.my_transpose).to eq(result_arr)
      end
    end


    context "when input is a rectangular array" do
      it "returns rectanglar array transposed" do
        arr = [
          [0,1,2],
          [3,4,5],
          [6,7,8],
          [9,10,11]
        ]

        result_arr = [
          [0,3,6,9],
          [1,4,7,10],
          [2,5,8,11]
        ]

        expect(arr.my_transpose).to eq(result_arr)

      end
    end
  end

  describe "#stock_picker" do
    context "when there id no profit" do
      it "return nil" do
        stock_arr=[800,600,400,200]
        expect(stock_arr.stock_picker).to be_nil
      end
    end 

    context "when there is a profit" do
      it "returns buy and sell index with the  max profit" do
        stock_arr=[1800,300,500,700,900,500,200]
        expect(stock_arr.stock_picker).to eq([1,4])
      end
    end

  end
end
