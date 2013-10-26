def base_attributes(overrides = {})
  { 
    name: "Camp Pendleton",
    branch: "USMC",
    city: "Oceanside",
    state: "CA",
    country: "US",
    lat: 33.360,
    long: -117.414
  }.merge(overrides)
end
