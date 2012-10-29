class Page
  include MongoMapper::Document 
  
  ##
  # Keys
  #
  key :name, String
  key :body, String

  ## Key Settings
  timestamps!

  def as_json(options={})
    {
      :name       => self.name,
      :created_at => self.created_at.to_i
    }
  end
end
