require 'spec_helper'

describe Anchorder::Chord do

  context "when symbol is not given" do
    it "converts the name of the chord to symbol" do
      chord = Anchorder.chord do
        name "G"
        coordinates [3, 2, 0, 0, 3, 3]
      end

      expect(chord.symbol).to eq :G
    end
  end


end
