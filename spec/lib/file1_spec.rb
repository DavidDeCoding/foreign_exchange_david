require "spec_helper"
require "file1"

describe File1 do
  describe "#new" do
    it "takes three parameters and returns a File1 object" do
      @file1 = File1.new(1, 2, 3)
      expect(@file1).to be_an_instance_of File1
    end
  end
end
