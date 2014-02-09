require 'spec_helper'

describe Beer do
  it "is saved with a proper name and style" do
    beer = Beer.create name:"Karhu", style:"Lager"

    expect(beer.valid?).to be(true)
    expect(Beer.count).to eq(1)
  end

  it "is not saved without a name" do
    beer = Beer.create style:"Ipa"

    expect(beer.valid?).to be(false)
    expect(Beer.count).to eq(0)
  end

  it "is not saved without a style" do
    beer = Beer.create name:"Tyylivapaa"

    expect(beer.valid?).to be(false)
    expect(Beer.count).to eq(0)
  end

end
