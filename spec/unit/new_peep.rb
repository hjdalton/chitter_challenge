describe New do
  it 'adds a new peep to the database' do 
    New.add(message: "This is a test")

  expect(Messages.posts).to include "This is a test"
  end
end
