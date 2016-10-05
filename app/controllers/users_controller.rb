class UsersController < ApplicationController
  def destroy
    reset_session
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
