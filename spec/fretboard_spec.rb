require 'spec_helper'

describe Anchorder::Fretboard do

  describe '.play_as_tab' do
    it "plays the chord in tab format" do
      chord = Anchorder.chord do
        name "G"
        coordinates [3, 2, 0, 0, 3, 3]
      end
      expected = "e |-3-|\nb |-3-|\nG |-0-|\nD |-0-|\nA |-2-|\nE |-3-|"
      expect(Anchorder::Fretboard.play_as_tab(chord)).to eq expected
    end
  end
end
