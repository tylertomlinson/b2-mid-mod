require 'rails_helper'

RSpec.describe "mechanics index page" do
  it "I see all mechanics including their name and years of experience" do

    @mechanic_1 = Mechanic.create(
                                  name: "Test Name 1",
                                  years_of_experience: 1)

    @mechanic_2 = Mechanic.create(
                                  name: "Test Name 2",
                                  years_of_experience: 2)

  visit '/mechanics'


    within "#mechanic-#{@mechanic_1.id}" do
        expect(page).to have_content(@mechanic_1.name)
        expect(page).to have_content("#{@mechanic_1.years_of_experience} years of experience")
    end

    within "#mechanic-#{@mechanic_2.id}" do
        expect(page).to have_content(@mechanic_2.name)
        expect(page).to have_content("#{@mechanic_2.years_of_experience} years of experience")
    end
  end
end
