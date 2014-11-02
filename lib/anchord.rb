Dir[File.dirname(__FILE__) + '/anchord/**/*.rb']
  .reject{|f| f[File.dirname(__FILE__) + '/anchord/chords']}
  .each {|file| require file }

module Anchord
  class << self
    attr_writer :library, :tuning

    def library
      @library ||= Library.load_from_chord_files
    end

    def chord(tuning=Anchord.tuning, &block)
      Chord.new(tuning, &block)
    end

    def tuning
      @tuning ||= Tuning.standard
    end

    def play(chord_sym)
      chord = library[chord_sym]
      unless chord
        puts "We cannot find the chord '#{chord_sym}' in our chord library."
      else
        puts Anchord::Fretboard.play_as_tab chord
      end
    end

    def chord_files
      Dir[File.dirname(__FILE__) + '/anchord/chords/**/*_chords.rb']
    end
  end
end
