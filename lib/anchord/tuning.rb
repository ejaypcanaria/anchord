module Anchord
  module Tuning
    TUNES = {
      standard:   [:E,  :A, :D, :G, :b, :e],
      half_step:  [:Eb, :Ab, :Db, :Gb, :bb, :eb]
    }

    TUNES.keys.each do |key|
      define_singleton_method(key) do
        TUNES[key]
      end
    end
  end
end
