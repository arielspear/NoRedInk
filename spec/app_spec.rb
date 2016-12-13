require 'spec_helper'
require 'rspec'
require_relative '../lib/app.rb'

describe "App" do
  it 'should prompt the user' do
    expect(STDOUT).to receive(:puts).with('How many questions do you want?')
  end
end
