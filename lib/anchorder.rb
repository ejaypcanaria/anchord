Dir[File.dirname(__FILE__) + '/anchorder/**/*.rb'].each {|file| require file }

module Anchorder
  class << self
    def fretboard
      @fretboard ||= Fretboard.standard
    end

    def library
      @library ||= []
    end

    def chord(&block)
      Chord.new(&block)
    end

    def tuning
      @tuning ||= Tuning::TUNES[:standard]
    end
  end

end
