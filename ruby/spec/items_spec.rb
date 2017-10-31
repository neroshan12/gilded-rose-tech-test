require './lib/item.rb'

describe Item do
  describe "Initialize" do
    it 'initializes with a name, sell_in and quality' do
      items = Item.new("foo", 0, 0)
      expect(items).to be_instance_of(Item)
    end
  end
end
