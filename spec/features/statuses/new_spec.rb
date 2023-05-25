# as a user
# when i visit '/users/:id/statuses/new'
# and i fill out a form and click submit
# i am redirected to my feed
# where I see my new status
require 'rails_helper'

RSpec.describe 'new status page' do
  describe "happy path creates a status" do
    it 'creates a new status with valid parameters passed' do
      user = User.create( email: 'email@email.com', username: "user", password: '1234', password_confirmation: '1234')

      visit user_status_path(user)

      expect(current_path).to eq(user_status_path(user))
      expect(page).to have_content("Submit")

      fill_in 'Text_field', with: 'Im hungry'
      click_button 'Submit'

      expect(current_path).to eq("users/#{user.id}")
      # TODO: beef up tests with within block
      expect(page).to have_content("Im hungry")

      new_status = user.statuses.last
      expect(new_status.content).to eq("Im hungry")
    end 
  end
end