class Admin::InstructorsController < Admin::AdminController

  def index
    @instructors = Instructor.all

    respond_with @instructors
  end

  def show
    @instructor = Instructor.find(params[:id])

    respond_with @instructor
  end

  def new
    @instructor = Instructor.new

    respond_with @instructor
  end

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def create
    @instructor = Instructor.new(params[:instructor])

    flash[:notice] = 'Instructor was successfully created.' if @instructor.save!
    respond_with @instructor, :location => admin_instructor_path(@instructor)
  end

  def update
    @instructor = Instructor.find(params[:id])

    flash[:notice] = 'Instructor was successfully updated.' if @instructor.update_attributes(params[:instructor])
    respond_with @instructor, :location => admin_instructor_path(@instructor)
  end


  def destroy
    @instructor = Instructor.find(params[:id])
    @instructor.destroy

    respond_with @instructor, :location => admin_instructors_path
  end
end

