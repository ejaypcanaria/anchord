module Anchorder

	class << self
		def chord(&block)
      Chord.new(&block)
		end
	end

	class Chord
    def initialize(&block)
      instance_eval(&block)
      @symbol = name.to_sym unless symbol
    end

    def name(val=nil)
      @name ||= val
    end

    def symbol(val=nil)
      @symbol ||= val
    end

    def coordinates(val=nil)
      @coordinates ||= val
    end
	end
end
