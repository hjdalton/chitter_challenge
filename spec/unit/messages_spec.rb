describe Messages do
  describe '.posts' do
    it 'returns the peeps stored in the database' do 
      connection = PG.connect(dbname: 'chitter_test')
      peeps = Messages.posts

      expect(peeps).to include "This is a peep!"
    end
  end
end