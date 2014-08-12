module Anchord
  class Tuning
    TUNES = {
      standard:   [:E,  :A, :D, :G, :b, :e],
      half_step:  [:Eb, :Ab, :Db, :Gb, :bb, :eb]
    }

    private
      def self.define_tuning_method
        TUNES.keys.each do |key|
          define_singleton_method(key) do
            TUNES[key]
          end
        end
      end

    define_tuning_method
  end
end
