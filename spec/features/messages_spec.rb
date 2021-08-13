feature 'shows the users messages' do
  scenario 'a list of messages appears' do
    connection = PG.connect(dbname: 'chitter_test')
    # Messages.posts
    visit('/')
    
    expect(page).to have_content("This is a peep!")
  end
end