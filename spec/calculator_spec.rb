require 'rspec'
require_relative '../calculator'

describe Calculator do
  before(:each) { @calculator = Calculator.new('Scientific') }

  it "should add 2 numbers correctly" do
    expect(@calculator.add(2, 2)).to eq 4
  end
  it "should subtract 2 numbers correctly" do
    expect(@calculator.subtract(2, 2)).to eq 0
  end 
  it "should divide 2 numbers correctly" do
    expect(@calculator.divide(2, 2)).to eq 1
  end 
  it "should throw ZeroDivisionError error when dividing by 0" do
    expect { @calculator.divide(2, 0) }.to raise_error ZeroDivisionError
  end 
end