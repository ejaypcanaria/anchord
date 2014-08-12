module Anchord
  class Library

    def initialize(chords=[])
      @chords_hash = {}
      populate_chords_hash unless chords.empty?
    end

    def add_chord(tuning=Anchord.tuning, &block)
      chord = Chord.new(tuning, &block)
      @chords_hash[chord.symbol] = chord
      chord
    end

    def [](key)
      @chords_hash[key]
    end

    def chords
      @chords_hash.values
    end

    private

      def populate_chords_hash
        chords.inject(@chords_hash) do |chords_hash, chord|
          chords_hash[chord.symbol] = chord
        end
      end

    class << self
      def load_from_chord_files(chord_files=Anchord.chord_files, reader=File)
        lib_instance = new
        chord_files.each do |chord_file|
          lib_instance.instance_eval(reader.read(chord_file))
        end
        lib_instance
      end
    end
  end
end
