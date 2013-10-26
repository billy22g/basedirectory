require "spec_helper"

describe "Navigate bases" do
  it "links from base detail pages back to all bases page" do 
    base = Base.create(base_attributes)
  
    visit base_url(base)
    click_link "Show All Bases"
    expect(current_path).to eq(bases_path)
  end

  it "links from all bases page to each base detail page" do
    base = Base.create(base_attributes)

    visit bases_url
    click_link base.name
    expect(current_path).to eq(base_path(base))
  end

  it "links from each base detail page to all other base detail pages" do
    base = Base.create(base_attributes)
    base2 = Base.create(base_attributes(name: "NAS Corpus Christi"))

    visit base_url(base)
    click_link base2.name
    expect(current_path).to eq(base_path(base2))
  end
end

