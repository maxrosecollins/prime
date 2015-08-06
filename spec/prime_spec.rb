require 'spec_helper'

describe Prime do
  it 'has a version number' do
    expect(Prime::VERSION).not_to be nil
  end

  it "returns missing argument if none supplied" do
    expect(`ruby #{Dir.pwd}/bin/prime --count `).to include("missing argument: --count")
  end
end
