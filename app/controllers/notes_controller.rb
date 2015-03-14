class NotesController < ApplicationController
  def create
    note = Note.new(user_id: current_user.id,
                    track_id: params[:track_id],
                    body: params[:note][:body])

    unless note.save
      flash[:errors] = note.errors.full_messages
    end
    redirect_to track_url(params[:track_id])
  end

  def destroy
    note = Note.find(params[:id])
    track = note.track
    note.destroy
    redirect_to track_url(track)
  end

end
