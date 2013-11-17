# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Base.delete_all

        Base.create([{name: "Naval Base San Diego",
                      branch: "Navy", 
                      city: "San Diego", 
                      state: "CA", 
                      country: "US",
                      lat: 32.684,
                      long: -117.127
                      },

                     {name: "Camp Pendleton",
                      branch: "Marine Corps", 
                      city: "Oceanside", 
                      state: "CA", 
                      country: "US",
                      lat: 33.2804,
                      long: -117.299}])
