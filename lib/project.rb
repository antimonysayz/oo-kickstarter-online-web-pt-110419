class Project
  attr_accessor :title, :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers = backer
    backers.back_project(self) unless backer.backed_projects.include?(self)
  end
  
end