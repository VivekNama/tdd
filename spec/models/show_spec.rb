require 'spec_helper'

describe Show do
  it { should validate_presence_of(:name).with_message("Please specify a name.") }
  it { should validate_presence_of(:picture).with_message("Please specify a picture.") }

  describe "#new" do
    before do
      @show = Show.new
    end

    it "should be valid" do
      @show.valid?
    end
  end

  describe "#destroy" do
    let(:show) { FactoryGirl.create(:show) }

    it "should be success" do
      show.destroy
    end
  end
end