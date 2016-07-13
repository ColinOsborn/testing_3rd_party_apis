require 'rails_helper'

describe SunlightService do
  context "#legislators" do
    it "returns a list of legislators." do
      VCR.use_cassette("legislators") do
      legislators = SunlightService.new.legislators(gender: "F")
      legislator = legislators.first

      expect(legislators.count).to eq(20)
      expect(legislator[:first_name]).to eq("Joni")
      expect(legislator[:last_name]).to eq("Ernst")
      end
    end
  end
end

# another when you can check the structure of the JSON attributes,
# JSONMatchers

# dont rush to make decisions, write what you want first,
# then make decisions on how to set it up
# especially with DDD
