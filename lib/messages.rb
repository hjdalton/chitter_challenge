require 'pg' 

class Messages
  
  def self.posts
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_test')
    else 
      connection = PG.connect(dbname: 'chitter')
    end

    result = connection.exec("SELECT message FROM peeps;")
    result.map { |peeps| peeps['message']}
  end
end
