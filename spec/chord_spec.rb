require 'spec_helper'

describe Anchord::Chord do

  let(:chord) do
    Anchord.chord do
      name "G"
      coordinates [3, 2, 0, 0, 3, 3]
    end
  end

  it "has fretboard string tuning as methods" do
    expected_methods = chord.tuning.map {|string| ["#{string}_string".to_sym, "play_#{string}".to_sym] }
    expect(chord.methods).to include *(expected_methods.flatten)
  end

  context "when symbol is not given" do
    it "converts the name of the chord to symbol" do
      expect(chord.symbol).to eq :G
    end
  end

end
