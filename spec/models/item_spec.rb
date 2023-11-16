require 'rails_helper'

RSpec.describe Item, type: :model do

  it "instantiates a new object of the Item class" do
    expect{Item.new}.to_not raise_error
  end

  it "instantiates a new object with a String name" do
    tempItem = Item.new(name: "milk")
    expect(tempItem.name).to be_a(String)
  end

  it "instantiates an object with a default value of nil for deleted_at" do
    tempItem = Item.new(name: "milk")
    expect(tempItem.deleted_at).to(be(nil))
  end

  it "has a timestamp in the deleted_at attribute that matches the updated_at attribute" do
    tempItem = Item.new(name: "milk", deleted_at: nil)
    tempItem.deleted_at = DateTime.now
    tempItem.save
    expect(tempItem.deleted_at).to be_within(1.second).of(tempItem.updated_at)
  end

end
