require "spec_helper"

describe "Viewing one base" do 
  it "shows all the details about one base" do
    base = Base.create(base_attributes)

    visit base_url(base)
    expect(page).to have_text(base.name)
    expect(page).to have_text(base.branch)
    expect(page).to have_text(base.city)
  end
end


