require 'rspec'
require 'tower'

RSpec.describe Tower do
  subject(:tower){Tower.new()}
  describe "#initialize" do
    it "creates all disks in tower_a" do
      expect(tower.tower_a).to eq([3,2,1])
    end

    it "creates tower_b and tower_c as a empty array" do
      expect(tower.tower_b).to eq([])
      expect(tower.tower_c).to eq([])
    end
  end

  describe "#get_value" do

  end

  describe "#valid_move?" do
    context "when move is valid " do
      it "returns true if the next tower is empty" do
        tower_a=[3,2,1]
        tower_b=[]
        expect(tower.valid_move?(tower_a, tower_b)).to be true
       end

      it "returns true if the next tower's last disk is greater than disk" do
        tower_a=[1,2]
        tower_b=[3]
        expect(tower.valid_move?(tower_a, tower_b)).to be true
      end
    end

    context "when move is invalid"  do
      it "returns false if the next tower's last disk is smaller than current disk" do
        tower_b=[1,2]
        tower_a=[3]
        expect(tower.valid_move?(tower_a, tower_b)).to be false
      end
    end
  end

  describe "#move" do
    context "when move is valid " do
      it "moves last disk to next tower" do
        tower_a=[1,2]
        tower_b=[3]
        tower.move(tower_a,tower_b)
        expect(tower_a).to match_array([1])
        expect(tower_b).to match_array([3,2])
      end
    end
    context "when move is invalid " do
      it "raises an error" do
        tower_b=[1,2]
        tower_a=[3]
        expect { tower.move(tower_a, tower_b) }.to raise_error("Move Invalid")
      end
    end
  end

  describe "#won?" do
    context "when player has won" do
      it "all disks have moved to tower_b or tower_c" do
        tower.tower_a = []
        tower.tower_b = [3,2,1]
        tower.tower_c = []

        expect(tower.won?).to be true
      end
    end
  end

end
