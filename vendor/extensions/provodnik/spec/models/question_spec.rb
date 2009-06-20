require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

context 'Question in general' do 

  before do
    @question = Factory.create(:question)
  end

  it "should be created ok with title and ordinal_nb." do
    @question.should be_valid

  end

  it "should fail without ordinal_nb or title" do
    @question = Question.new
    @question.should have(1).error_on(:ordinal_nb)
    @question.should have(1).error_on(:title) 
  end
end
