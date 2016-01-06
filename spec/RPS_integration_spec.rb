require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the rock paper scissors path', {:type => :feature}) do
  it('processes the user entries and returns the winner') do
    visit('/')
    choose("challengerRock")
    choose("defenderPaper")
    click_button('Send')
    expect(page).to have_content('false')
  end

  it('processes the user entries and returns the winner') do
    visit('/')
    choose("challengerRock")
    choose("defenderRock")
    click_button('Send')
    expect(page).to have_content('tie')
  end
end
