require 'spec_helper'


describe Anchorder::Library do

  describe ".add_chord" do
    it "adds the chord to the chord library" do
      chord = Anchorder::Library.add_chord do
        name "G"
        symbol :G
        coordinates [3, 2, 0, 0, 3, 3]
      end

      expect(Anchorder.library).to include chord
    end
  end
end
