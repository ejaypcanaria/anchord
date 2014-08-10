module Anchorder
  class Library
    attr_reader :chords

    def initialize(chords=[])
      @chords = chords
    end

    def add_chord(tuning=Anchorder.tuning, &block)
      chord = Chord.new(tuning, &block)
      @chords << chord
      chord
    end

    class << self
      def load_from_chord_files(chord_files=Anchorder.chord_files, reader=File)
        lib_instance = new
        chord_files.each do |chord_file|
          lib_instance.instance_eval(reader.read(chord_file))
        end
        lib_instance
      end
    end
  end
end
