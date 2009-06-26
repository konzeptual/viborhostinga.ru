require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

context 'SurveyPage' do

  before do
    @surveyPage = Factory.create(:survey_page)
  end

  it "should be created ok with only ordinal_nb." do
    @surveyPage.should be_valid
    @surveyPage.ordinal_nb.should == 1
  end

  it "should require ordinal_nb" do
    @surveyPage = SurveyPage.new
    @surveyPage.should have(1).error_on(:ordinal_nb)
  end

  
  

end
