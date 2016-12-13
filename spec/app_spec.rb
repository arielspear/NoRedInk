require 'spec_helper'
require 'rspec'
require_relative '../lib/app.rb'

describe "App" do
  it 'should prompt the user' do
    expect(STDOUT).to receive(:puts).with('How many questions do you want?')
    App.new.prompt
  end

  it 'should prompt for input and accept it' do
    allow($stdin).to receive(:gets).and_return('3')
    numOfQ = $stdin.gets.to_i

    expect(numOfQ).to eq(3)
  end

  it 'should reject numbers not greater than 0'
    App.new.getNumOfQ().should == "foo"
  end
