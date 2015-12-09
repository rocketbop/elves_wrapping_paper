require 'gift'

describe 'Gift' do

  describe 'behaviours' do

    let(:gift) { Gift.new(length: 10, width: 30, height: 5) }

    it "calculates the surface area of a gift" do
      expect(gift.surface_area).to eq(1000)
    end

    it "calculates the area of the smallest side" do
      expect(gift.smallest_side_area).to eq(50)
    end

    it "calculates the total wrapping paper needed" do
      expect(gift.wrapping_paper_area).to eq(1050)
    end

    it "calculates the shortest perimeter" do
      expect(gift.shortest_perimeter).to eq(30)
    end

    it "calculates the cubic feet of the gift" do
      expect(gift.cubic_volume).to eq(1500)
    end

    it "calculates the total ribbon needed" do
      expect(gift.ribbon_length).to eq(1530)
    end
  end
end
