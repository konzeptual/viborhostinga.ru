context 'General survey functioning' do

  # before do
  #   @survey = Factory.create(:survey) 
  # end

  it "should require finish_url" do
    survey = Survey.new
    survey.should have(1).error_on(:finish_url)
  end

end
