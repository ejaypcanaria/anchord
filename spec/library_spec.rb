require 'spec_helper'

describe Anchord::Library do

  before :each do
    chord_files = ['tmp/e_chords.rb']
    reader = double('File',
                basename: 'e_chords.rb',
                read: %q{
                  add_chord do
                    name        "E"
                    coordinates [0, 2, 2, 1, 0, 0]
                  end
                  })
    Anchord.library = Anchord::Library.load_from_chord_files(chord_files, reader)
  end

  describe "#add_chord" do
    it "adds the chord to the chord library" do
      Anchord::library
      chord = Anchord::library.add_chord do
        name "G"
        coordinates [3, 2, 0, 0, 3, 3]
      end

      expect(Anchord.library.chords).to include chord
    end
  end

  describe ".load_from_chord_files" do
    it "reads a chord file and adds it to the library" do
      expect(Anchord.library.chords.first.name).to eq "E"
    end

    it "dynamically creates chord constants" do

    end
  end
end
