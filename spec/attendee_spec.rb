require "./lib/item"
require "./lib/auction"
require "./lib/attendee"

RSpec.describe Attendee do
  before(:each) do
    @attendee1 = Attendee.new({name: 'Megan', budget: '$50'})
  end

  it "exists and has attributes" do
    expect(@attendee1).to be_a(Attendee)
    expect(@attendee1.name).to eq("Megan")
    expect(@attendee1.budget).to eq(50)
  end

end
