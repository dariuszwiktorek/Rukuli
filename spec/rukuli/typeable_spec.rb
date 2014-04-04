require 'spec_helper'

describe Rukuli::Region, "#Typeable" do
  before(:all) do
    app = Rukuli::App.new(application "TEXT_EDIT")
    app.focus
    @region = app.window
  end

  context "modifying text input with" do
    it "apple key" do
      @region.type("n", Rukuli::KEY_CMD)
    end

    it "shift key" do
      @region.type("this should be lower case")
      @region.type("this should be upper case", Rukuli::KEY_SHIFT)
    end

    it "types and presses enter" do
      @region.enter("this should be followed by the enter key")
    end

    it "presses the escape key to exit save dialog" do
      @region.type("s", Rukuli::KEY_CMD)
      sleep 2
      @region.escape()
    end
  end

  context "unicode characters" do
    it("backspace")   { @region.type(Rukuli::KEY_BACKSPACE * 50) }
    it("return")      { @region.type(Rukuli::KEY_RETURN) }
    it("left arrow")  { @region.type(Rukuli::LEFT_ARROW) }
  end
end
