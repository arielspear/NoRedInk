require 'spec_helper'
require 'rspec'
require_relative '../lib/app.rb'

describe "App" do
  it 'should prompt the user' do
    expect(STDOUT).to receive(:puts).with('How many questions do you want?')
    App.new.prompt
  end
  it 'should prompt for input and accept it' do
    allow($stdin).to receive(:gets).and_return(3)
    numOfQ = $stdin.gets.to_int

    expect(numOfQ).to eq(3)
  end


end
