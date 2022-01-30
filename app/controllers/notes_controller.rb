class NotesController < ApplicationController
  def new
    @note = @notable.notes.new
  end

  def create
      @note = @notable.notes.new notes_params
      @notable.save
      redirect_to @notable, notice: "Your note was successfully posted"
  end

   private
     
      def notes_params
        params.require(:note).permit(:content)
      end
end