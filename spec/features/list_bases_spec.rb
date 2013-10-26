require "spec_helper"

describe "Viewing bases" do 
  it "allows us to view the bases on the page" do 
    base1 = Base.create(name: "Camp Pendleton",
                        branch: "USMC",
                        city: "Oceanside",
                        state: "CA",
                        country: "US",
                        lat: 33.360,
                        long: -117.414)
    base2 = Base.create(name: "Naval Base San Diego",
                        branch: "USN",
                        city: "San Diego",
                        state: "CA",
                        country: "US",
                        lat: 32.684,
                        long: -117.127)
    base3 = Base.create(name: "NAS Pensacola",
                        branch: "USN",
                        city: "Pensacola",
                        state: "FL",
                        country: "US",
                        lat: 30.358,
                        long: -87.309)

    visit bases_url

    expect(page).to have_text("3 Bases")
    expect(page).to have_text(base1.name)
    expect(page).to have_text(base2.name)
    expect(page).to have_text(base3.name)

  end
end


