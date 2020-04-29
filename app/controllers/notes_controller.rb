class NotesController < ApplicationController

  protect_from_forgery
  
def index 
    notes = Note.all
    render json: notes, except: [:created_at, :updated_at]
end


# def new 
#     notes = Note.new(note_params)
#     if Note.save
#         render json: note, except: [:created_at, :updated_at]
#     else 
#         render json: { errors: note.errors } 
#     end
#   end 

  def show
    set_note
    render json: @note = Note.find(params[:id])
  end


  def create
    note = Note.new(note_params)

    if note.save
      render json: note, status: :created
    else
      render json: note.errors, status: :unprocessable_entity
    end
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    note = Note.find(params[:id])
      if note.update(note_params)
        render json: note
      else 
        render json: { errors: note.errors } 
      end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.permit(:name, :desc, :code, :genre, :id)
  end


end
