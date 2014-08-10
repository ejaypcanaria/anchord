module Anchorder

	class Chord

    attr_accessor :tuning

    def initialize(tuning, &block)
      instance_eval(&block)
      @tuning = tuning
      @symbol = name.to_sym unless @symbol
      define_strings
    end

    def define_strings
      @tuning.each_with_index do |tune, position|
        method_name = "#{tune}_string".to_sym
        Chord.send(:define_method, method_name) do
          @coordinates[position]
        end
        Chord.send(:alias_method, "play_#{tune}".to_sym,method_name)
      end
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
