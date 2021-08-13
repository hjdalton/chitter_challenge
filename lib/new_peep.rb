require 'pg'

class New
  attr_reader :message
  
  def initialize(id:, message:, time:)
    @id = id
    @message = message
    @time = time
  end

  def self.add(message:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_test')
    else 
      connection = PG.connect(dbname: 'chitter')
    end

    connection.exec("INSERT INTO peeps (message) VALUES('#{message}');")

  end
end