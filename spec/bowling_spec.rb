require 'bowling'

RSpec.describe Bowling, "#score" do
  context "With no striked or spares" do
    it "sums the pins for each roll" do
      bowling = Bowling.new
      20.times {bowling.hit(4)}
      expect(bowling.score).to eq 80
    end
  end

end