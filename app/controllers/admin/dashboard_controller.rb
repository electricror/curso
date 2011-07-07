class Admin::DashboardController < Admin::AdminController

  before_filter :load_resources

  def index

  end

  def load_resources
    #@trainings = Training.all
    @instructors = Instructor.all
    @training_open = Training.where("closed = ? ", false)
    @training_closed = Training.where("closed = ? ", true)

  end
end

