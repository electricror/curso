class Admin::TrainingsController < Admin::AdminController

  def index
    @trainings = Training.all

    respond_with @trainings
  end

  def show
    @training = Training.find(params[:id])

    respond_with @training
  end

  def new
    @training = Training.new

    respond_with @training
  end

  def edit
    @training = Training.find(params[:id])
  end

  def create
    @training = Training.new(params[:training])

    flash[:notice] = 'Training was successfully created.' if @training.save!
    respond_with @training, :location => admin_training_path(@training)
  end

  def update
    @training = Training.find(params[:id])

    flash[:notice] = 'Training was successfully updated.' if @training.update_attributes(params[:training])
    respond_with @training, :location => admin_training_path(@training)
  end


  def destroy
    @training = Training.find(params[:id])
    @training.destroy

    respond_with @training, :location => admin_trainings_path
  end
end

