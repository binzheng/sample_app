require 'spec_helper'

describe "AuthenticationPages" do
  subject { page }
  describe "signin page" do
  	before {visit signin_path}

  	describe "with invalid information" do
  		before {click_button "Sign in"}

  		it { should have_title('Sign in')}
  		it { should have_selector('div.alert.alert-error',text:'Invalid')}
  	end
  end
end
