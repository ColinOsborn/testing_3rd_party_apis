require 'rails_helper'

describe SunlightService do
  context "#legislators" do
    it "returns a list of legislators." do
      expect(legislators.count).to eq(20)
      expect(legislator[:first_name]).to eq("Joni")
      expect(legislator[:last_name]).to eq("Ernst")
    end
  end
end
