class Product < Struct.new(:id, :slug, :name, :description, :wips)
  def self.find
    new(
      1,
      'kjdb',
      'KJDB',
      'An iPhone app that helps you find karaoke venues and songs to sing',
      example_wips
    )
  end

  def self.example_wips
    [
      Wip.new(
        1, # id
        whatupdave, # creator
        1, # number
        12, # votes
        'Add scraper for DJ Purple', # title
        'It should scrape his songbook nightly', # body
        [], # comments
      ),
      Wip.new(
        1, # id
        chrislloyd, # creator
        2, # number
        82, # votes
        'New homepage design', # title
        'Needs more words', # body
        example_comments, # comments
      ),
    ]
  end

  def self.example_comments
    [
      Comment.new(
        1,
        chrislloyd,
        "Do we really need this? It seems to add additional complexity"
      ),
      Comment.new(
        2,
        whatupdave,
        "It's going to do wonders for our SEO"
      )
    ]
  end

  def self.whatupdave
    User.new(1, 'whatupdave', 'dave@snappyco.de')
  end

  def self.chrislloyd
    User.new(2, 'chrislloyd', 'christopher.lloyd@gmail.com')
  end
end