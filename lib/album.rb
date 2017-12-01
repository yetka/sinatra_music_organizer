class Album
  attr_accessor :title
  attr_accessor :dte


  def initialize(attributes)
    @title = attributes.fetch(:title)
    @date = attributes.fetch(:date)
  end

end
