require 'spec_helper'

describe Anchorder::Tuning do

  it "has tuning methods" do
    expect(Anchorder::Tuning.methods(false)).to include *Anchorder::Tuning::TUNES.keys
  end

end
