feature 'allows user to post a peep' do
  scenario 'users posts a peep on the website' do
    visit('/new_peep')
    fill_in('new_peep', with: "Hello Chitter")
    click_button('Post')

    expect(page).to have_content("Hello Chitter")
  end
end
