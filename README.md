Story 2
As a visitor,
When I visit an amusement park’s show page
I see the name and price of admissions for that amusement park
And I see the names of all the rides that are at that theme park listed in alphabetical order
And I see the average thrill rating of this amusement park’s rides

Ex: Hershey Park
    Admissions: $50.00

    Rides:
           1. Lightning Racer
           2. Storm Runner
           3. The Great Bear

    Average Thrill Rating of Rides: 7.8/10

Story 3
As a user,
When I go to a mechanics show page
I see their name, years of experience, and names of all rides they’re working on
And I also see a form to add a ride to their workload
When I fill in that field with an id of an existing ride and hit submit
I’m taken back to that mechanics show page
And I see the name of that newly added ride on this mechanics show page

Ex:

Mechanic: Kara Smith
Years of Experience: 11

Current rides they’re working on:
The Frog Hopper
Fahrenheit
The Kiss Raise

Add a ride to workload:
 _pretent_this_is_a_textfield_
                       Submit





                       AmusementPark
                       - has many rides

                       Ride
                       - has many mechanics

                       Mechanics
                       -

                       mechanic rides

                       mechanic id
                       ride id
