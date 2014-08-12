module Anchord
  class Fretboard
    class << self
      def play_as_tab(chord)
        chord.tuning.reverse.inject("") do |output, tune|
          plot = chord.send("play_#{tune}")
          output << "#{tune} |-#{plot}-|\n"
        end.chomp
      end
    end
  end
end
