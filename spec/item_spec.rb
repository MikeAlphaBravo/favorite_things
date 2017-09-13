require('rspec')
require('item')
require('pry')

  describe("Item") do
    before() do
      Item.clear()
    end

  describe(".all") do
    it("is empty at first") do
      expect(Item.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves an item to the list of items") do
      item = Item.new("tacos")
      item.save()
      expect(Item.all()).to(eq([item]))
    end
  end

  describe(".clear") do
    it("clears all items from the list") do
      item = Item.new("tacos")
      item.save()
      item.clear()
      expect(Item.all()).to(eq([]))
    end
  end

end

# (To avoid cluttering the lesson, we didn’t add tests for reader and writer methods, but you should a test these methods in your own code.)
