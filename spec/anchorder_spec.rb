require 'spec_helper'

describe Anchorder do
  let(:chord) do
    Anchorder.chord do
      name        "G"
      coordinates [3, 2, 0, 0, 3, 3]
    end
  end

  describe ".chord" do
    it "creates a chord object" do
      expect(chord).to be_a Anchorder::Chord
      expect(chord.name).to eq "G"
      expect(chord.coordinates).to eq [3, 2, 0, 0, 3, 3]
    end
  end
end
