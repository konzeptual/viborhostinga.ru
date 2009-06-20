require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

context 'Genral functioning.' do
  before do
    @choice = Factory.create(:question)
  end

  it "should require title, ordinal_nb" do
    choice = Choice.new
    choice.should have(1).error_on(:title)
    choice.should have(1).error_on(:ordinal_nb) 
  end

  



end
