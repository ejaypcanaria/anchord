Dir[File.dirname(__FILE__) + '/anchorder/**/*.rb']
  .reject{|f| f[File.dirname(__FILE__) + '/anchorder/chords']}
  .each {|file| require file }

module Anchorder
  class << self
    attr_writer :library, :tuning

    def library
      @library ||= Library.load_from_chord_files
    end

    def chord(tuning=Anchorder.tuning, &block)
      Chord.new(tuning, &block)
    end

    def tuning
      @tuning ||= Tuning::TUNES[:standard]
    end

    def chord_files
      Dir[File.dirname(__FILE__) + '/anchorder/chords/**/*_chords.rb']
    end
  end

end
