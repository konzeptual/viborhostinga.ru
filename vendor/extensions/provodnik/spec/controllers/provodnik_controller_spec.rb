require File.dirname(__FILE__) + '/../spec_helper'

describe ProvodnikController do

  it "should have correct routes" do
    get :show
    controller.should be_an_instance_of(ProvodnikController)
  end

end
