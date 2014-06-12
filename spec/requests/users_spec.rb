require 'spec_helper'

describe "User Pages" do
  
  describe 'signup' do
    before { visit signup_path }
    let(:submit) { 'Create my account' }

    describe 'with invalid info' do
      it 'should not create a user' do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe 'with valid info' do
      before do
        fill_in 'Name',		with: 'Andrew Cowan'
        fill_in 'Email',	with: 'icculus@gmdstudios.com'
        fill_in 'Password',	with: 'ChangeMe'
        fill_in 'Confirmation',	with: 'ChangeMe'
      end
      it 'should create a user' do
        expect { click_button submit }.to change(User, :count)
      end
    end

  end

end
