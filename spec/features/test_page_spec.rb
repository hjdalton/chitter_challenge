feature 'Viewing test page' do
  scenario 'visiting the test page' do
    visit('/test')
    expect(page).to have_content "Test page"
  end
end
