require './lib/gilded_rose.rb'
require './lib/item.rb'

describe GildedRose do
  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "foo"
    end
  end

  it 'does not allow the quality of an item to be negative' do
    items = [Item.new("foo", 0, 0)]
    GildedRose.new(items).update_quality()
    expect(items[0].quality).to eq 0
  end

  it 'does not allow the quality of an item to be greater than 50' do
    items = [Item.new("Aged Brie", 10, 50)]
    GildedRose.new(items).update_quality()
    expect(items[0].quality).to eq 50
  end
end
