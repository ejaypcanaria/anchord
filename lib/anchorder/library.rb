module Anchorder

  class << self
    def library
      @library ||= []
    end
  end

  class Library
    class << self
      def add_chord(&block)
        chord = Chord.new(&block)
        Anchorder.library << chord
        chord
      end
    end
  end
end
