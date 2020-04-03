require 'rails_helper'

RSpec.describe "amusement parks show page" do
  before(:each) do

  @ap_1 = AmusementPark.create(
                                name: "Bush Gardens",
                                admission_price: "99.99")

  @ap_2 = AmusementPark.create(
                                name: "Adventure Island",
                                admission_price: "99.99")


  @ap_3 = AmusementPark.create(
                                name: "Disney World",
                                admission_price: "99.99")

  @ride_1 = @ap_1.rides.create(
                                name: "A Test Name ",
                                rating: 10)

  @ride_2 = @ap_1.rides.create(
                                name: "B Test Name",
                                rating: 1)

  @ride_3 = @ap_1.rides.create(
                                name: "C Test Name",
                                rating: 5)

  end

  it "can see name and price of admissions" do

  visit "/amusement_parks/#{@ap_1.id}"

  expect(page).to have_content(@ap_1.name)
  expect(page).to have_content("Admission Price: $#{@ap_1.admission_price}")

  visit "/amusement_parks/#{@ap_2.id}"

  expect(page).to have_content(@ap_2.name)
  expect(page).to have_content("Admission Price: $#{@ap_2.admission_price}")

  visit "/amusement_parks/#{@ap_3.id}"

  expect(page).to have_content(@ap_3.name)
  expect(page).to have_content("Admission Price: $#{@ap_3.admission_price}")

  end

  it "amusement park rides listed in alphabetical order" do

  visit "/amusement_parks/#{@ap_1.id}"

  expect(page).to have_content("Rides:")

  expect(@ride_1.name).to appear_before(@ride_2.name, only_text: true)
  expect(@ride_2.name).to appear_before(@ride_3.name, only_text: true)
  expect(@ride_1.name).to appear_before(@ride_2.name, only_text: true)
  end

  it "can see average thrill rating of ride" do
      visit "/amusement_parks/#{@ap_1.id}"

      expect(page).to have_content("5.3333333333333333/10")
      #need to round to but keep coming up with nil class. however save_and_open_page shows average rounded with calling .round(1) on the model method
    end
end
