require 'spec_helper'

describe Anchord::Tuning do

  it "has tuning methods" do
    expect(Anchord::Tuning.methods(false)).to include *Anchord::Tuning::TUNES.keys
  end

end
