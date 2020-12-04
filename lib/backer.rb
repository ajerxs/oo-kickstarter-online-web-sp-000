class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    @backers.each do |backers|
      if backers != self.name
        @backers << self.name
      end
    end
  end


end
