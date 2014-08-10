require 'spec_helper'

describe Anchorder::Fretboard do

  let(:g_chord) do
    Anchorder.chord do
      name "G"
      coordinates [3, 2, 0, 0, 3, 3]
    end
  end

  describe '.play' do
    it "plays the chord in a chord chart format"
    # do
    #   chord_chart_format = "e |---|---|-*-|---|---|---|\n"\
    #                        "b |---|---|-*-|---|---|---|\n"\
    #                        "G |---|---|---|---|---|---|\n"\
    #                        "D |---|---|---|---|---|---|\n"\
    #                        "A |---|-*-|---|---|---|---|\n"\
    #                        "E |---|---|-*-|---|---|---|"

    #   expect(Anchorder::Fretboard.play(g_chord)).to eq chord_chart_format
    # end
  end

  describe '.play_as_tab' do
    it "plays the chord in tab format" do
      tab_format = "e |-3-|\n"\
                   "b |-3-|\n"\
                   "G |-0-|\n"\
                   "D |-0-|\n"\
                   "A |-2-|\n"\
                   "E |-3-|"
      expect(Anchorder::Fretboard.play_as_tab(g_chord)).to eq tab_format
    end
  end
end
